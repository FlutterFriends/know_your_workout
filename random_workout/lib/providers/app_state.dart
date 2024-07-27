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

    final random = Random();
    _currentWorkout = [];
    _updateAvailableExercises();

    while (_currentWorkout.length < 5 && _availableExercises.isNotEmpty) {
      final randomIndex = random.nextInt(_availableExercises.length);
      final selectedExercise = _availableExercises[randomIndex];
      _currentWorkout.add(selectedExercise);
      _availableExercises.removeAt(randomIndex);
    }

    notifyListeners();
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
}
