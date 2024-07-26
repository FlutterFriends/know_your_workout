import 'package:flutter/material.dart';
import '../models/exercise.dart';
import '../data/all_exercises.dart';
import 'dart:math';

class AppState extends ChangeNotifier {
  bool _isDarkMode = true;
  List<Exercise> _currentWorkout = [];

  bool get isDarkMode => _isDarkMode;
  List<Exercise> get currentWorkout => _currentWorkout;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  void generateWorkout(ExerciseCategory category) {
    final random = Random();
    final categoryExercises =
        allExercises.where((e) => e.category == category).toList();
    _currentWorkout = List.generate(
      5,
      (_) => categoryExercises[random.nextInt(categoryExercises.length)],
    );
    notifyListeners();
  }

  void removeExercise(int index) {
    _currentWorkout.removeAt(index);
    notifyListeners();
  }

  void addExercise(Exercise exercise) {
    if (!_currentWorkout.contains(exercise)) {
      _currentWorkout.add(exercise);
      notifyListeners();
    }
  }
}
