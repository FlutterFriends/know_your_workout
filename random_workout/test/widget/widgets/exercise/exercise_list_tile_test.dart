import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_workout/models/exercise.dart';
import 'package:random_workout/widgets/exercise/exercise_list_tile.dart';

void main() {
  testWidgets('ExerciseListTile displays exercise information',
      (WidgetTester tester) async {
    final exercise = ExerciseModel(
      name: 'Squats',
      description: 'Lower body exercise',
      instructions: 'Do squats',
      category: ExerciseCategory.strength,
      muscleTargets: [MuscleTarget.quadriceps, MuscleTarget.glutes],
      jointTargets: [JointTarget.knee],
      version: 1,
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ExerciseListTile(
            exercise: exercise,
            onRemove: () {},
            onShowInstructions: () {},
          ),
        ),
      ),
    );

    expect(find.text('Squats'), findsOneWidget);
    expect(find.text('Lower body exercise'), findsOneWidget);
    expect(find.text('Muscles: Quadriceps, Glutes'), findsOneWidget);
    expect(find.text('Joints: Knee'), findsOneWidget);
    expect(find.text('Focus: Lower Body'), findsOneWidget);
  });
}
