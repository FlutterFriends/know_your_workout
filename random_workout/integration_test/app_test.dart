import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:random_workout/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tap on the floating action button, verify counter',
        (tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Verify the initial state
      expect(find.text('Choose Workout Category'), findsOneWidget);

      // Tap the 'Strength' category
      await tester.tap(find.text('STRENGTH'));
      await tester.pumpAndSettle();

      // Verify we're on the workout page
      expect(find.text('Strength Workout'), findsOneWidget);

      // Tap the add exercise button
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();

      // Verify the create exercise dialog is shown
      expect(find.text('Create New Exercise'), findsOneWidget);

      // Enter exercise details
      await tester.enterText(find.byType(TextField).at(0), 'New Exercise');
      await tester.enterText(find.byType(TextField).at(1), 'Description');
      await tester.tap(find.text('Add'));
      await tester.pumpAndSettle();

      // Verify the new exercise is added to the list
      expect(find.text('New Exercise'), findsOneWidget);
    });
  });
}
