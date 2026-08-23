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

  // Local database only — fast, and the first screen needs it.
  final hiveService = HiveService();
  await hiveService.init();

  // UI on screen immediately; all heavy work happens after first paint.
  runApp(const JambCbtApp());
  unawaited(_runStartupTasks(hiveService));
}

/// Startup tasks that must never block the first frame.
Future<void> _runStartupTasks(HiveService hiveService) async {
  // Let the first frames paint and animate.
  await Future<void>.delayed(const Duration(milliseconds: 600));

  // 1) Seed bundled questions (JSON parsing in a background isolate).
  try {
    await _seedStarterQuestions(hiveService);
  } catch (e) {
    debugPrint('Seeding failed: $e');
  }

  // 2) Ads: SDK init delayed past the launch window; first loads are
  //    staggered inside AdService (see ad_service.dart) so their main-thread
  //    work never piles up during launch.
  unawaited(
    Future<void>.delayed(const Duration(seconds: 5))
        .then((_) => AdService.instance.init()),
  );

  // 3) Audio context so app sounds mix with (never pause) device audio.
  //    Timeout-guarded so a slow audio service can never stall the app.
  try {
    await AudioPlayer.global
        .setAudioContext(AppSound.context)
        .timeout(const Duration(seconds: 3));
  } catch (e) {
    debugPrint('Audio context setup skipped: $e');
  }
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
      // Parse and build the questions OFF the UI thread.
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
