import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/exercise.dart';
import '../providers/app_state.dart';
import 'workout_page.dart';

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
          children: exerciseMenuChoices.map((category) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
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
        ),
      ),
    );
  }
}
