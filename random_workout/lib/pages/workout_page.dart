import 'package:flutter/material.dart';
import 'dart:math';
import '../models/exercise.dart';
import '../data/all_exercises.dart';

class WorkoutPage extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback toggleTheme;
  final ExerciseCategory category;

  const WorkoutPage({
    super.key,
    required this.isDarkMode,
    required this.toggleTheme,
    required this.category,
  });

  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  List<Exercise> exercises = [];

  @override
  void initState() {
    super.initState();
    generateWorkout();
  }

  void generateWorkout() {
    final random = Random();
    final categoryExercises =
        allExercises.where((e) => e.category == widget.category).toList();
    exercises = List.generate(
      5,
      (_) => categoryExercises[random.nextInt(categoryExercises.length)],
    );
    setState(() {});
  }

  void removeExercise(int index) {
    setState(() {
      exercises.removeAt(index);
    });
  }

  void addExercise(Exercise exercise) {
    if (!isExerciseInWorkout(exercise)) {
      setState(() {
        exercises.add(exercise);
      });
    }
  }

  bool isExerciseInWorkout(Exercise exercise) {
    return exercises.any((e) => e.name == exercise.name);
  }

  Future<void> _showAddExerciseDialog() async {
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
                    _showPreDefinedExercisesDialog();
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const Text('Create a custom exercise'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    _showCreateExerciseDialog();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _showPreDefinedExercisesDialog() async {
    final categoryExercises =
        allExercises.where((e) => e.category == widget.category).toList();
    List<Exercise> availableExercises = categoryExercises
        .where((exercise) => !isExerciseInWorkout(exercise))
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
                            addExercise(exercise);
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
                  _showCreateExerciseDialog();
                },
              ),
          ],
        );
      },
    );
  }

  Future<void> _showCreateExerciseDialog() async {
    final nameController = TextEditingController();
    final descriptionController = TextEditingController();

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Create New Exercise'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(hintText: "Exercise Name"),
                ),
                TextField(
                  controller: descriptionController,
                  decoration: const InputDecoration(hintText: "Description"),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Add'),
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    descriptionController.text.isNotEmpty) {
                  addExercise(Exercise(
                    name: nameController.text,
                    description: descriptionController.text,
                    category: widget.category,
                  ));
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }

  void _showInstructions(Exercise exercise) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.category.name.capitalize()} Workout'),
        actions: [
          IconButton(
            icon: Icon(widget.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: widget.toggleTheme,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(exercises[index].name + index.toString()),
            onDismissed: (direction) {
              removeExercise(index);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${exercises[index].name} removed')),
              );
            },
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            child: ListTile(
              title: Text(exercises[index].name),
              subtitle: Text(exercises[index].description),
              trailing: IconButton(
                icon: const Icon(Icons.info_outline),
                onPressed: () => _showInstructions(exercises[index]),
              ),
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: generateWorkout,
            heroTag: null,
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: _showAddExerciseDialog,
            heroTag: null,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
