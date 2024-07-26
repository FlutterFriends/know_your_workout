import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/exercise.dart';
import '../providers/app_state.dart';
import '../data/all_exercises.dart';
import '../widgets/exercise/exercise_list_tile.dart';
import '../widgets/exercise/create_exercise_dialog.dart';

class WorkoutPage extends StatelessWidget {
  final ExerciseCategory category;

  const WorkoutPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('${category.name.capitalize()} Workout'),
        actions: [
          IconButton(
            icon:
                Icon(appState.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: appState.toggleTheme,
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
            onPressed: () => appState.generateWorkout(category),
            heroTag: null,
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () => _showCreateExerciseDialog(context),
            heroTag: null,
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
        return AlertDialog(
          title: const Text('Add Exercise'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Choose from pre-defined exercises'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    _showPreDefinedExercisesDialog(context);
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const Text('Create a custom exercise'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    _showCreateExerciseDialog(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _showPreDefinedExercisesDialog(BuildContext context) async {
    final appState = Provider.of<AppState>(context, listen: false);
    final categoryExercises =
        allExercises.where((e) => e.category == category).toList();
    List<Exercise> availableExercises = categoryExercises
        .where((exercise) => !appState.currentWorkout.contains(exercise))
        .toList();

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Choose an Exercise'),
          content: SizedBox(
            width: double.maxFinite,
            child: availableExercises.isEmpty
                ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'No more pre-defined exercises available. Try creating your own custom exercise!',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  )
                : ScrollbarTheme(
                    data: ScrollbarThemeData(
                      thumbVisibility: WidgetStateProperty.all(true),
                    ),
                    child: ListView.builder(
                      itemCount: availableExercises.length,
                      itemBuilder: (context, index) {
                        final exercise = availableExercises[index];
                        return ListTile(
                          title: Text(exercise.name),
                          subtitle: Text(exercise.description),
                          onTap: () {
                            appState.addExercise(exercise);
                            Navigator.of(context).pop();
                          },
                        );
                      },
                    ),
                  ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            if (availableExercises.isEmpty)
              TextButton(
                child: const Text('Create Custom Exercise'),
                onPressed: () {
                  Navigator.of(context).pop();
                  _showCreateExerciseDialog(context);
                },
              ),
          ],
        );
      },
    );
  }

  void _showCreateExerciseDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CreateExerciseDialog(
          category: category,
          onExerciseCreated: (exercise) {
            Provider.of<AppState>(context, listen: false).addExercise(exercise);
          },
        );
      },
    );
  }

  void _showInstructions(BuildContext context, Exercise exercise) {
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
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
