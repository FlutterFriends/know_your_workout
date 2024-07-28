import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_workout/models/exercise.dart';
import 'package:random_workout/widgets/exercise/create_exercise_dialog.dart';

void main() {
  testWidgets('CreateExerciseDialog creates a new exercise',
      (WidgetTester tester) async {
    Exercise? createdExercise;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CreateExerciseDialog(
            category: ExerciseCategory.strength,
            onExerciseCreated: (exercise) {
              createdExercise = exercise;
            },
          ),
        ),
      ),
    );

    await tester.enterText(find.byType(TextField).at(0), 'New Exercise');
    await tester.enterText(find.byType(TextField).at(1), 'Description');
    await tester.tap(find.text('Add'));
    await tester.pumpAndSettle();

    expect(createdExercise, isNotNull);
    expect(createdExercise!.name, 'New Exercise');
    expect(createdExercise!.description, 'Description');
    expect(createdExercise!.category, ExerciseCategory.strength);
  });
}
