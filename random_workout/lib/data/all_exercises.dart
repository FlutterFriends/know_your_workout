import '../models/exercise.dart';
import 'balance_exercises.dart';
import 'cardio_exercises.dart';
import 'stretching_exercises.dart';
import 'strength_exercises.dart';
import 'mobility_exercises.dart';

final List<ExerciseModel> allExercises = [
  ...cardioExercises,
  ...balanceExercises,
  ...stretchingExercises,
  ...strengthExercises,
  ...mobilityExercises,
];
