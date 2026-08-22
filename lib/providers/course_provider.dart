import 'package:flutter/material.dart';
import '../models/course.dart';
import '../models/progress.dart';
import '../services/hive_service.dart';

class CourseProvider with ChangeNotifier {
  final HiveService _hiveService = HiveService();

  final List<Course> _courses = [
    // ── JAMB UTME Subjects ──
    Course(
      id: 'eng',
      code: 'ENG',
      name: 'Use of English',
      icon: '📖',
      colorHex: '#DCEEFF', // Sky
      mode: 'compulsory',
      examQuestions: 60, // JAMB Use of English = 60 questions
      examMinutes: 40,
    ),
    Course(
      id: 'mat',
      code: 'MAT',
      name: 'Mathematics',
      icon: '📐',
      colorHex: '#FFF3CD', // Amber
      mode: 'science',
    ),
    Course(
      id: 'phy',
      code: 'PHY',
      name: 'Physics',
      icon: '⚡',
      colorHex: '#FFE8D6', // Peach
      mode: 'science',
    ),
    Course(
      id: 'che',
      code: 'CHE',
      name: 'Chemistry',
      icon: '⚗️',
      colorHex: '#DFF5E4', // Mint
      mode: 'science',
    ),
    Course(
      id: 'bio',
      code: 'BIO',
      name: 'Biology',
      icon: '🧬',
      colorHex: '#E2F8EC', // Mint
      mode: 'science',
    ),
    Course(
      id: 'eco',
      code: 'ECO',
      name: 'Economics',
      icon: '📈',
      colorHex: '#EAE2FA', // Lavender
      mode: 'commercial',
    ),
    Course(
      id: 'gov',
      code: 'GOV',
      name: 'Government',
      icon: '🏛️',
      colorHex: '#DCEEFF', // Sky
      mode: 'arts',
    ),
    Course(
      id: 'lit',
      code: 'LIT',
      name: 'Literature in English',
      icon: '📚',
      colorHex: '#EAE2FA', // Lavender
      mode: 'arts',
    ),
    Course(
      id: 'com',
      code: 'COM',
      name: 'Commerce',
      icon: '🛒',
      colorHex: '#FFF3CD', // Amber
      mode: 'commercial',
    ),
    Course(
      id: 'acc',
      code: 'ACC',
      name: 'Principles of Accounts',
      icon: '🧾',
      colorHex: '#DFF5E4', // Mint
      mode: 'commercial',
    ),
  ];

  List<Course> get courses => _courses;

  final Map<String, CourseProgress> _progressMap = {};

  CourseProvider() {
    loadAllProgress();
  }

  void loadAllProgress() {
    for (var course in _courses) {
      _progressMap[course.id] = _hiveService.getProgress(course.id);
    }
    notifyListeners();
  }

  CourseProgress getProgressForCourse(String courseId) {
    return _progressMap[courseId] ??
        CourseProgress(
          courseId: courseId,
          questionsAttempted: 0,
          correctCount: 0,
          bestScore: 0,
          lastAttemptDate: DateTime.now(),
        );
  }

  double getCompletionPercentage(String courseId) {
    // For demo purposes and mock completeness, we'll calculate based on standard 100 questions pool.
    // If questions are cached, we can check how many questions are in Hive.
    final cachedQuestionsCount = _hiveService.getCachedQuestions(courseId).length;
    final total = cachedQuestionsCount > 0 ? cachedQuestionsCount : 100;
    
    final progress = getProgressForCourse(courseId);
    if (progress.questionsAttempted == 0) return 0.0;
    
    final pct = (progress.questionsAttempted / total);
    return pct > 1.0 ? 1.0 : pct;
  }

  Future<void> updateCourseProgress({
    required String courseId,
    required int additionalAttempted,
    required int additionalCorrect,
    int? newExamScore,
  }) async {
    final current = getProgressForCourse(courseId);
    
    int updatedAttempted = current.questionsAttempted + additionalAttempted;
    int updatedCorrect = current.correctCount + additionalCorrect;
    int updatedBestScore = current.bestScore;

    if (newExamScore != null && newExamScore > current.bestScore) {
      updatedBestScore = newExamScore;
    }

    final updated = CourseProgress(
      courseId: courseId,
      questionsAttempted: updatedAttempted,
      correctCount: updatedCorrect,
      bestScore: updatedBestScore,
      lastAttemptDate: DateTime.now(),
    );

    _progressMap[courseId] = updated;
    await _hiveService.saveProgress(updated);
    notifyListeners();
  }
}
