import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_workout/models/exercise.dart';
import 'package:random_workout/widgets/exercise/exercise_list_tile.dart';

void main() {
  testWidgets('ExerciseListTile displays exercise information',
      (WidgetTester tester) async {
    final exercise = Exercise(
      name: 'Squats',
      description: 'Lower body exercise',
      category: ExerciseCategory.strength,
      muscleTargets: [MuscleTarget.quads, MuscleTarget.glutes],
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
    expect(find.text('Muscle Targets: Quadriceps, Glutes'), findsOneWidget);
  });
}
