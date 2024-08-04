import 'package:flutter/material.dart';
import '../models/exercise.dart';
import '../data/all_exercises.dart';
import 'dart:math';

class AppState extends ChangeNotifier {
  bool _isDarkMode = true;
  List<ExerciseModel> _currentWorkout = [];
  ExerciseCategory? _selectedCategory;
  List<ExerciseModel> _categoryExercises = [];
  List<ExerciseModel> _availableExercises = [];

  bool get isDarkMode => _isDarkMode;
  List<ExerciseModel> get currentWorkout => _currentWorkout;
  ExerciseCategory? get selectedCategory => _selectedCategory;
  List<ExerciseModel> get categoryExercises => _categoryExercises;
  List<ExerciseModel> get availableExercises => _availableExercises;

  Map<dynamic, int> _targetCounts = {};

  final Set<dynamic> _selectedTargets = {};

  Set<dynamic> get selectedTargets => _selectedTargets;

  bool isTargetSelected(dynamic target) {
    return _selectedTargets.contains(target);
  }

  void toggleTargetSelection(dynamic target) {
    if (_selectedTargets.contains(target)) {
      _selectedTargets.remove(target);
    } else {
      _selectedTargets.add(target);
    }
    notifyListeners();
  }

  void clearSelectedTargets() {
    _selectedTargets.clear();
    notifyListeners();
  }

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
      ExerciseModel selectedExercise = _selectBalancedExercise();
      _currentWorkout.add(selectedExercise);
      _updateTargetCounts(selectedExercise);
      _availableExercises.remove(selectedExercise);
    }

    notifyListeners();
  }

  void _resetTargetCounts() {
    _targetCounts = {};
  }

  void _updateTargetCounts(ExerciseModel exercise) {
    exercise.muscleTargets?.forEach((muscle) {
      _targetCounts[muscle] = (_targetCounts[muscle] ?? 0) + 1;
    });
    exercise.jointTargets?.forEach((joint) {
      _targetCounts[joint] = (_targetCounts[joint] ?? 0) + 1;
    });
  }

  void _recalculateTargetCounts() {
    _resetTargetCounts();
    for (var exercise in _currentWorkout) {
      _updateTargetCounts(exercise);
    }
  }

  List<MapEntry<dynamic, int>> getSortedTargetCounts() {
    var sortedEntries = _targetCounts.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    return sortedEntries;
  }

  ExerciseModel _selectBalancedExercise() {
    _availableExercises.sort((a, b) {
      int scoreA = _calculateExerciseScore(a);
      int scoreB = _calculateExerciseScore(b);
      return scoreB.compareTo(scoreA); // Higher score is better
    });

    // Select randomly from top 3 to maintain some randomness
    int selectionPool = min(3, _availableExercises.length);
    return _availableExercises[Random().nextInt(selectionPool)];
  }

  int _calculateExerciseScore(ExerciseModel exercise) {
    int score = 0;

    // Add points for each target that matches the selected targets
    if (exercise.muscleTargets != null) {
      score += exercise.muscleTargets!
              .where((muscle) => _selectedTargets.contains(muscle))
              .length *
          2;
    }
    if (exercise.jointTargets != null) {
      score += exercise.jointTargets!
              .where((joint) => _selectedTargets.contains(joint))
              .length *
          2;
    }

    // Add a base score to ensure exercises without selected targets still have a chance
    score += exercise.score;

    return score;
  }

  void removeExercise(int index) {
    _currentWorkout.removeAt(index);
    _updateAvailableExercises();
    _recalculateTargetCounts();
    notifyListeners();
  }

  void addExercise(ExerciseModel exercise) {
    if (!_currentWorkout.contains(exercise)) {
      _currentWorkout.add(exercise);
      _updateAvailableExercises();
      _updateTargetCounts(exercise);
      notifyListeners();
    }
  }

  /// Calculates the workout diversity score based on the number of unique targets engaged.
  ///
  /// The score is calculated by counting the unique muscle targets, joint targets,
  /// and focus areas engaged by all exercises in the current workout.
  ///
  /// Returns the total diversity score of the current workout.
  int get workoutDiversityScore {
    Set<dynamic> uniqueTargets = {};

    for (var exercise in _currentWorkout) {
      exercise.muscleTargets?.forEach((muscle) {
        uniqueTargets.add(muscle);
      });

      exercise.jointTargets?.forEach((joint) {
        uniqueTargets.add(joint);
      });
    }

    return uniqueTargets.length;
  }

  /// Groups the target counts by type (Muscles, Joints, Focus Areas) and sorts them.
  ///
  /// The target counts are grouped into three categories: Muscles, Joints, and Focus Areas.
  /// Each group is sorted in descending order based on the count.
  ///
  /// Returns a map where the keys are the group names and the values are the sorted target counts.
  Map<String, List<MapEntry<dynamic, int>>> getGroupedTargetCounts() {
    Map<String, List<MapEntry<dynamic, int>>> groupedCounts = {
      'Muscles': [],
      'Joints': [],
      'Focus Areas': [],
    };

    for (var entry in _targetCounts.entries) {
      if (entry.key is MuscleTarget) {
        groupedCounts['Muscles']!.add(entry);
      } else if (entry.key is JointTarget) {
        groupedCounts['Joints']!.add(entry);
      }
    }

    // Sort each group
    groupedCounts.forEach((key, value) {
      value.sort((a, b) => b.value.compareTo(a.value));
    });

    return groupedCounts;
  }
}
