import 'package:flutter_test/flutter_test.dart';
import 'package:random_workout/models/exercise.dart';

void main() {
  group('Exercise', () {
    test('should create an Exercise instance', () {
      final exercise = ExerciseModel(
        name: 'Push-ups',
        description: 'Basic upper body exercise',
        instructions: 'Do push-ups',
        category: ExerciseCategory.strength,
        muscleTargets: [MuscleTarget.chest, MuscleTarget.triceps],
        jointTargets: [JointTarget.elbow],
        version: 1,
      );

      expect(exercise.name, 'Push-ups');
      expect(exercise.description, 'Basic upper body exercise');
      expect(exercise.category, ExerciseCategory.strength);
      expect(
          exercise.muscleTargets, [MuscleTarget.chest, MuscleTarget.triceps]);
      expect(exercise.jointTargets, [JointTarget.elbow]);
    });

    test('should return correct labels for targets', () {
      expect(getMuscleTargetLabel(MuscleTarget.chest), 'Chest');
      expect(getJointTargetLabel(JointTarget.knee), 'Knee');
    });
  });
}
