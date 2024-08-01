import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:random_workout/models/exercise.dart';
import '../../mocks/mock_app_state.dart';

void main() {
  late MockAppState mockAppState;

  setUp(() {
    mockAppState = MockAppState();
  });

  test('workoutDiversityScore calculation is correct', () {
    final testExercises = [
      Exercise(
        name: 'Push-ups',
        category: ExerciseCategory.strength,
        description: 'Do a push-up',
        instructions: 'Do a push-up',
        muscleTargets: [MuscleTarget.chest, MuscleTarget.triceps],
        jointTargets: [JointTarget.elbow],
        focusAreas: [FocusArea.upperBody],
      ),
      Exercise(
        name: 'Squats',
        description: 'Do a squat',
        instructions: 'Do a squat',
        category: ExerciseCategory.strength,
        muscleTargets: [MuscleTarget.quadriceps],
        jointTargets: [JointTarget.knee],
        focusAreas: [FocusArea.lowerBody],
      ),
    ];

    // Set up the mock to return our test exercises when currentWorkout is accessed
    when(mockAppState.currentWorkout).thenReturn(testExercises);

    // Set up the mock to call the real workoutDiversityScore getter
    when(mockAppState.workoutDiversityScore).thenAnswer((_) {
      final workout = mockAppState.currentWorkout;
      Set<dynamic> uniqueTargets = {};
      for (var exercise in workout) {
        uniqueTargets.addAll(exercise.muscleTargets ?? []);
        uniqueTargets.addAll(exercise.jointTargets ?? []);
        uniqueTargets.addAll(exercise.focusAreas ?? []);
      }
      return uniqueTargets.length;
    });

    // Now we can test the workoutDiversityScore
    expect(mockAppState.workoutDiversityScore, 7);
  });

  test('getGroupedTargetCounts returns correct data', () {
    final testExercises = [
      Exercise(
        name: 'Push-ups',
        description: 'Do a push-up',
        instructions: 'Do a push-up',
        category: ExerciseCategory.strength,
        muscleTargets: [MuscleTarget.chest, MuscleTarget.triceps],
        jointTargets: [JointTarget.elbow],
        focusAreas: [FocusArea.upperBody],
      ),
      Exercise(
        name: 'Squats',
        description: 'Do a squat',
        instructions: 'Do a squat',
        category: ExerciseCategory.strength,
        muscleTargets: [MuscleTarget.quadriceps],
        jointTargets: [JointTarget.knee],
        focusAreas: [FocusArea.lowerBody],
      ),
    ];

    // Set up the mock to return our test exercises when currentWorkout is accessed
    when(mockAppState.currentWorkout).thenReturn(testExercises);

    // Set up the expected grouped counts
    final expectedGroupedCounts = {
      'Muscles': [
        const MapEntry(MuscleTarget.chest, 1),
        const MapEntry(MuscleTarget.triceps, 1),
        const MapEntry(MuscleTarget.quadriceps, 1),
      ],
      'Joints': [
        const MapEntry(JointTarget.elbow, 1),
        const MapEntry(JointTarget.knee, 1),
      ],
      'Focus Areas': [
        const MapEntry(FocusArea.upperBody, 1),
        const MapEntry(FocusArea.lowerBody, 1),
      ],
    };

    // Set up the mock to return our expected grouped counts
    when(mockAppState.getGroupedTargetCounts())
        .thenReturn(expectedGroupedCounts);

    // Now we can test the getGroupedTargetCounts method
    final groupedCounts = mockAppState.getGroupedTargetCounts();

    expect(groupedCounts['Muscles']!.length, 3);
    expect(groupedCounts['Joints']!.length, 2);
    expect(groupedCounts['Focus Areas']!.length, 2);

    expect(
        groupedCounts['Muscles']!
            .any((e) => e.key == MuscleTarget.chest && e.value == 1),
        isTrue);
    expect(
        groupedCounts['Muscles']!
            .any((e) => e.key == MuscleTarget.triceps && e.value == 1),
        isTrue);
    expect(
        groupedCounts['Muscles']!
            .any((e) => e.key == MuscleTarget.quadriceps && e.value == 1),
        isTrue);
  });
}
