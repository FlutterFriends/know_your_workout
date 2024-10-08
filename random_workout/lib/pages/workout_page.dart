import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_workout/widgets/exercise/add_exercise_options_dialog.dart';
import 'package:random_workout/widgets/exercise/predefined_exercises_dialog.dart';
import 'package:random_workout/widgets/workout/workout_diversity_dialog.dart';
import '../models/exercise.dart';
import '../providers/app_state.dart';
import '../widgets/exercise/exercise_list_tile.dart';
import '../widgets/exercise/create_exercise_dialog.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('${appState.selectedCategory?.name.capitalize()} Workout'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () => _showWorkoutDiversityInfo(context),
            tooltip: 'Workout Diversity Info',
          ),
          IconButton(
            icon:
                Icon(appState.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: appState.toggleTheme,
            tooltip: 'Toggle Theme',
          ),
        ],
      ),
      body: Consumer<AppState>(
        builder: (context, appState, child) {
          return ListView.builder(
            itemCount: appState.currentWorkout.length,
            itemBuilder: (context, index) {
              final exercise = appState.currentWorkout[index];
              return ExerciseListTile(
                exercise: exercise,
                onRemove: () => appState.removeExercise(index),
                onShowInstructions: () => _showInstructions(context, exercise),
              );
            },
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: appState.generateWorkout,
            heroTag: null,
            tooltip: 'Generate new workout',
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () => _showAddExerciseDialog(context),
            heroTag: null,
            tooltip: 'Add exercise',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  Future<void> _showAddExerciseDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AddExerciseOptionsDialog(
          onChoosePreDefined: () => _showPreDefinedExercisesDialog(context),
          onCreateCustom: () => _showCreateExerciseDialog(context),
        );
      },
    );
  }

  Future<void> _showPreDefinedExercisesDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        final appState = Provider.of<AppState>(context, listen: false);
        return PreDefinedExercisesDialog(
          availableExercises: appState.availableExercises,
          category: appState.selectedCategory!,
          onCreateCustomExercise: () => _showCreateExerciseDialog(context),
        );
      },
    );
  }

  void _showCreateExerciseDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final appState = Provider.of<AppState>(context, listen: false);
        return CreateExerciseDialog(
          category: appState.selectedCategory!,
          onExerciseCreated: (exercise) {
            appState.addExercise(exercise);
          },
        );
      },
    );
  }

  void _showInstructions(BuildContext context, ExerciseModel exercise) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(exercise.name),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(exercise.description),
                const SizedBox(height: 20),
                const Text('Instructions:',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Text(exercise.instructions ?? 'No instructions available.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showWorkoutDiversityInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const WorkoutDiversityDialog();
      },
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
