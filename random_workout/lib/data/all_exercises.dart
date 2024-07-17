import '../models/exercise.dart';
import 'stretching_exercises.dart';
import 'strength_exercises.dart';
import 'mobility_exercises.dart';

final List<Exercise> allExercises = [
  ...stretchingExercises,
  ...strengthExercises,
  ...mobilityExercises,
];
