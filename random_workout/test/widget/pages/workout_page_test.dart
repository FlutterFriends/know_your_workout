import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:random_workout/models/exercise.dart';
import 'package:random_workout/pages/workout_page.dart';
import 'package:random_workout/providers/app_state.dart';
import 'package:random_workout/widgets/exercise/add_exercise_options_dialog.dart';
import '../../mocks/mock_app_state.dart';

void main() {
  late MockAppState mockAppState;

  setUp(() {
    mockAppState = MockAppState();

    // Set up default stubs
    when(mockAppState.isDarkMode).thenReturn(false);
    when(mockAppState.currentWorkout).thenReturn([]);
    when(mockAppState.selectedCategory).thenReturn(ExerciseCategory.strength);
    when(mockAppState.generateWorkout()).thenReturn(null);
  });

  testWidgets('Add exercise button opens AddExerciseOptionsDialog',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<AppState>.value(
          value: mockAppState,
          child: const WorkoutPage(),
        ),
      ),
    );

    expect(find.byType(WorkoutPage), findsOneWidget);

    final addButton = find.byTooltip('Add exercise');
    expect(addButton, findsOneWidget);

    await tester.tap(addButton);
    await tester.pumpAndSettle();

    expect(find.byType(AddExerciseOptionsDialog), findsOneWidget);
    expect(find.text('Add Exercise'), findsOneWidget);
    expect(find.text('Choose from pre-defined exercises'), findsOneWidget);
    expect(find.text('Create a custom exercise'), findsOneWidget);
  });

  testWidgets('Generate new workout button calls generateWorkout',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<AppState>.value(
          value: mockAppState,
          child: const WorkoutPage(),
        ),
      ),
    );

    final generateButton = find.byTooltip('Generate new workout');
    expect(generateButton, findsOneWidget);

    await tester.tap(generateButton);
    await tester.pumpAndSettle();

    verify(mockAppState.generateWorkout()).called(1);
  });

  testWidgets('WorkoutPage displays current workout',
      (WidgetTester tester) async {
    final testExercises = [
      Exercise(
        name: 'Push-ups',
        description: 'Do push-ups',
        instructions: 'Do push-ups',
        category: ExerciseCategory.strength,
        muscleTargets: [MuscleTarget.chest, MuscleTarget.triceps],
        jointTargets: [JointTarget.elbow],
        focusAreas: [FocusArea.upperBody],
      ),
      Exercise(
        name: 'Squats',
        description: 'Do squats',
        instructions: 'Do squats',
        category: ExerciseCategory.strength,
        muscleTargets: [MuscleTarget.quadriceps],
        jointTargets: [JointTarget.knee],
        focusAreas: [FocusArea.lowerBody],
      ),
    ];

    when(mockAppState.currentWorkout).thenReturn(testExercises);
    when(mockAppState.selectedCategory).thenReturn(ExerciseCategory.strength);

    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<AppState>.value(
          value: mockAppState,
          child: const WorkoutPage(),
        ),
      ),
    );

    expect(find.text('Push-ups'), findsOneWidget);
    expect(find.text('Squats'), findsOneWidget);
  });

  testWidgets('WorkoutPage displays correct category in AppBar',
      (WidgetTester tester) async {
    when(mockAppState.selectedCategory).thenReturn(ExerciseCategory.strength);

    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<AppState>.value(
          value: mockAppState,
          child: const WorkoutPage(),
        ),
      ),
    );

    expect(find.text('Strength Workout'), findsOneWidget);
  });
}
