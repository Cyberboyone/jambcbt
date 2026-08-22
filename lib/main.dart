import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'services/hive_service.dart';
import 'services/ad_service.dart';
import 'services/sound_service.dart';
import 'models/question.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Local database only — it is fast, and the first screen needs it.
  final hiveService = HiveService();
  await hiveService.init();

  // Put the UI on screen IMMEDIATELY. Nothing below runApp() can delay the
  // launch anymore. (Previously the AdMob SDK init, the audio-context setup
  // and the 2,000-question seed ALL ran before the first frame — on slower
  // phones that froze the launch screen for seconds, looking like a hang.)
  runApp(const JambCbtApp());

  // Start the heavy work only after the app is visible (splash is showing).
  unawaited(_runStartupTasks(hiveService));
}

/// Startup tasks that must never block the first frame. They begin right
/// after runApp(), while the splash screen is on screen.
Future<void> _runStartupTasks(HiveService hiveService) async {
  // Give the first frames a clear runway to paint and animate.
  await Future<void>.delayed(const Duration(milliseconds: 600));

  // 1) Seed the bundled questions (JSON parsing runs in a background
  //    isolate via compute(), so the UI thread stays smooth).
  try {
    await _seedStarterQuestions(hiveService);
  } catch (e) {
    debugPrint('Seeding failed: $e');
  }

  // 2) Audio context so app sounds mix with (never pause) device audio.
  //    Feature unchanged — but timeout-guarded so a slow platform audio
  //    service can never stall the app again.
  try {
    await AudioPlayer.global
        .setAudioContext(AppSound.context)
        .timeout(const Duration(seconds: 3));
  } catch (e) {
    debugPrint('Audio context setup skipped: $e');
  }

  // 3) Ads LAST: the Google Mobile Ads SDK does disk/network work while
  //    initializing. Starting it after first paint keeps the launch smooth;
  //    AdService still preloads interstitial/rewarded/banners exactly as
  //    before, just a moment later.
  unawaited(AdService.instance.init());
}

/// Seeds the local Hive question cache from bundled JSON assets
/// so the app is usable immediately after install with zero internet.
Future<void> _seedStarterQuestions(HiveService hiveService) async {
  const courseIds = ['eng', 'mat', 'phy', 'che', 'bio', 'eco', 'gov', 'lit', 'com', 'acc'];

  for (final courseId in courseIds) {
    final cached = hiveService.getCachedQuestions(courseId);
    if (cached.isNotEmpty) continue; // already seeded or updated from GitHub

    try {
      final jsonStr = await rootBundle.loadString('assets/questions/$courseId.json');
      // Parse and build the 200 questions OFF the UI thread.
      final questions = await compute(parseQuestionsJson, jsonStr);
      await hiveService.cacheQuestions(courseId, questions);
      debugPrint('Seeded ${questions.length} questions for $courseId');
    } catch (e) {
      debugPrint('Failed to seed $courseId: $e');
    }
  }
}

/// Top-level parser so it can run inside a background isolate (compute()).
List<Question> parseQuestionsJson(String jsonStr) {
  final data = json.decode(jsonStr) as Map<String, dynamic>;
  final questionsRaw = data['questions'] as List<dynamic>;

  return questionsRaw.map((q) {
    final map = q as Map<String, dynamic>;
    return Question(
      id: map['id'] as String? ?? '',
      text: map['text'] as String? ?? '',
      options: List<String>.from(map['options'] as List? ?? []),
      correctIndex: map['correct_index'] as int? ?? 0,
      explanation: map['explanation'] as String? ?? '',
      difficulty: map['difficulty'] as int? ?? 1,
    );
  }).toList();
}
