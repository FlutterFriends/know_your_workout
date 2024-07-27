import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:random_workout/models/exercise.dart';
import 'package:random_workout/pages/workout_page.dart';
import 'package:random_workout/providers/app_state.dart';
import 'package:random_workout/widgets/exercise/add_exercise_options_dialog.dart';
import '../mocks/mock_app_state.mocks.dart';

void main() {
  late MockAppState mockAppState;

  setUp(() {
    mockAppState = MockAppState();

    // Set up default stubs
    when(mockAppState.isDarkMode).thenReturn(false);
    when(mockAppState.currentWorkout).thenReturn([]);
    when(mockAppState.generateWorkout(any)).thenReturn(null);
  });

  testWidgets('Add exercise button opens AddExerciseOptionsDialog',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<AppState>.value(
          value: mockAppState,
          child: const WorkoutPage(category: ExerciseCategory.strength),
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

    verifyNever(mockAppState.generateWorkout(any));
    verifyNever(mockAppState.addExercise(any));
  });

  testWidgets('Generate new workout button calls generateWorkout',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<AppState>.value(
          value: mockAppState,
          child: const WorkoutPage(category: ExerciseCategory.strength),
        ),
      ),
    );

    final generateButton = find.byTooltip('Generate new workout');
    expect(generateButton, findsOneWidget);

    await tester.tap(generateButton);
    await tester.pumpAndSettle();

    verify(mockAppState.generateWorkout(ExerciseCategory.strength)).called(1);
    verifyNever(mockAppState.addExercise(any));
  });

  testWidgets('WorkoutPage displays current workout',
      (WidgetTester tester) async {
    final testExercises = [
      Exercise(
          name: 'Push-ups',
          description: 'Do push-ups',
          category: ExerciseCategory.strength),
      Exercise(
          name: 'Squats',
          description: 'Do squats',
          category: ExerciseCategory.strength),
    ];

    when(mockAppState.currentWorkout).thenReturn(testExercises);

    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<AppState>.value(
          value: mockAppState,
          child: const WorkoutPage(category: ExerciseCategory.strength),
        ),
      ),
    );

    expect(find.text('Push-ups'), findsOneWidget);
    expect(find.text('Squats'), findsOneWidget);
  });
}
