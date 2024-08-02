import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/exercise.dart';
import '../providers/app_state.dart';
import 'workout_page.dart';
import 'target_selection_page.dart';

const List<ExerciseCategory> exerciseMenuChoices = [
  ExerciseCategory.balance,
  ExerciseCategory.cardio,
  ExerciseCategory.mobility,
  ExerciseCategory.strength,
  ExerciseCategory.stretching,
];

class CategorySelectionPage extends StatelessWidget {
  const CategorySelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Workout Category'),
        actions: [
          IconButton(
            icon:
                Icon(appState.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: appState.toggleTheme,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Workout Categories',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ...exerciseMenuChoices.map((category) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          appState.setSelectedCategory(category);
                          appState.generateWorkout();
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const WorkoutPage(),
                            ),
                          );
                        },
                        child: Text(category.name.toUpperCase()),
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
            const Divider(thickness: 1),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.tune),
                label: const Text('Select Workout Targets'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TargetSelectionPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  foregroundColor: Theme.of(context).colorScheme.onSecondary,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Personalize your workouts across all categories',
                style: TextStyle(color: Theme.of(context).hintColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
