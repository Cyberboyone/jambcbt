import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'services/hive_service.dart';
import 'services/ad_service.dart';
import 'services/sound_service.dart';
import 'services/startup_diagnostics.dart';
import 'models/question.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  StartupLog.step('app: starting');

  // Local database only — fast, and the first screen needs it.
  StartupLog.step('hive: opening boxes');
  final hiveService = HiveService();
  await hiveService.init();
  StartupLog.step('hive: ok');

  // UI on screen immediately.
  runApp(const JambCbtApp());
  StartupLog.step('ui: runApp');

  // Heavy work starts only after the app is visible.
  unawaited(_runStartupTasks(hiveService));
}

/// Startup tasks, fully traced so a freeze on any device is diagnosable
/// from the on-screen StartupOverlay.
Future<void> _runStartupTasks(HiveService hiveService) async {
  // Let the first frames paint.
  await Future<void>.delayed(const Duration(milliseconds: 600));

  // 1) Seed bundled questions (parsing in a background isolate).
  StartupLog.step('seed: starting');
  try {
    await _seedStarterQuestions(hiveService);
    StartupLog.step('seed: done');
  } catch (e) {
    StartupLog.fail('seed', e);
  }

  // 2) Ads: SDK init (local disk work + network when online).
  StartupLog.step('ads: initializing');
  try {
    await AdService.instance.init();
    StartupLog.step('ads: ok');
  } catch (e) {
    StartupLog.fail('ads', e);
  }

  // 3) Audio context LAST — traced separately so if this device's audio
  //    service blocks the platform thread, the trace ends on this line.
  StartupLog.step('audio: setting context');
  try {
    await AudioPlayer.global
        .setAudioContext(AppSound.context)
        .timeout(const Duration(seconds: 3));
    StartupLog.step('audio: ok');
  } catch (e) {
    StartupLog.fail('audio', e);
  }

  StartupLog.step('startup complete');
  await Future<void>.delayed(const Duration(seconds: 2));
  StartupLog.hide();
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
      StartupLog.step('seed $courseId: parsing');
      final questions = await compute(parseQuestionsJson, jsonStr);
      StartupLog.step('seed $courseId: saving ${questions.length}');
      await hiveService.cacheQuestions(courseId, questions);
      StartupLog.step('seed $courseId: saved');
    } catch (e) {
      StartupLog.fail('seed $courseId', e);
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
