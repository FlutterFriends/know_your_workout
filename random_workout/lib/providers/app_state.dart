import 'package:flutter/material.dart';
import '../models/exercise.dart';
import '../data/all_exercises.dart';
import 'dart:math';

class AppState extends ChangeNotifier {
  bool _isDarkMode = true;
  List<Exercise> _currentWorkout = [];
  ExerciseCategory? _selectedCategory;
  List<Exercise> _categoryExercises = [];
  List<Exercise> _availableExercises = [];

  bool get isDarkMode => _isDarkMode;
  List<Exercise> get currentWorkout => _currentWorkout;
  ExerciseCategory? get selectedCategory => _selectedCategory;
  List<Exercise> get categoryExercises => _categoryExercises;
  List<Exercise> get availableExercises => _availableExercises;

  Map<dynamic, int> _targetCounts = {};

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  void setSelectedCategory(ExerciseCategory category) {
    _selectedCategory = category;
    _updateCategoryExercises();
    notifyListeners();
  }

  void _updateCategoryExercises() {
    if (_selectedCategory != null) {
      _categoryExercises =
          allExercises.where((e) => e.category == _selectedCategory).toList();
      _updateAvailableExercises();
    }
  }

  void _updateAvailableExercises() {
    _availableExercises = _categoryExercises
        .where((exercise) => !_currentWorkout.contains(exercise))
        .toList();
  }

  void generateWorkout() {
    if (_selectedCategory == null) return;

    _currentWorkout = [];
    _updateAvailableExercises();
    _resetTargetCounts();

    while (_currentWorkout.length < 5 && _availableExercises.isNotEmpty) {
      Exercise selectedExercise = _selectBalancedExercise();
      _currentWorkout.add(selectedExercise);
      _updateTargetCounts(selectedExercise);
      _availableExercises.remove(selectedExercise);
    }

    notifyListeners();
  }

  void _resetTargetCounts() {
    _targetCounts = {};
  }

  void _updateTargetCounts(Exercise exercise) {
    exercise.muscleTargets?.forEach((muscle) {
      _targetCounts[muscle] = (_targetCounts[muscle] ?? 0) + 1;
    });
    exercise.jointTargets?.forEach((joint) {
      _targetCounts[joint] = (_targetCounts[joint] ?? 0) + 1;
    });
    exercise.focusAreas?.forEach((focus) {
      _targetCounts[focus] = (_targetCounts[focus] ?? 0) + 1;
    });
  }

  List<MapEntry<dynamic, int>> getSortedTargetCounts() {
    var sortedEntries = _targetCounts.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    return sortedEntries;
  }

  Exercise _selectBalancedExercise() {
    _availableExercises.sort((a, b) {
      int scoreA = _calculateDiversityScore(a);
      int scoreB = _calculateDiversityScore(b);
      return scoreB.compareTo(scoreA); // Higher score is better
    });

    // Select randomly from top 3 to maintain some randomness
    int selectionPool = min(3, _availableExercises.length);
    return _availableExercises[Random().nextInt(selectionPool)];
  }

  int _calculateDiversityScore(Exercise exercise) {
    int score = 0;

    exercise.muscleTargets?.forEach((muscle) {
      score += 3 - min(2, _targetCounts[muscle] ?? 0);
    });

    exercise.jointTargets?.forEach((joint) {
      score += 3 - min(2, _targetCounts[joint] ?? 0);
    });

    exercise.focusAreas?.forEach((focus) {
      score += 3 - min(2, _targetCounts[focus] ?? 0);
    });

    return score;
  }

  void removeExercise(int index) {
    _currentWorkout.removeAt(index);
    _updateAvailableExercises();
    notifyListeners();
  }

  void addExercise(Exercise exercise) {
    if (!_currentWorkout.contains(exercise)) {
      _currentWorkout.add(exercise);
      _updateAvailableExercises();
      notifyListeners();
    }
  }

  int get workoutDiversityScore {
    return _currentWorkout.fold(
        0, (sum, exercise) => sum + _calculateDiversityScore(exercise));
  }
}
