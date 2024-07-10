import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Workout Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WorkoutPage(),
    );
  }
}

class Exercise {
  final String name;
  final String description;
  final String? instructions;

  Exercise({required this.name, required this.description, this.instructions});
}

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  List<Exercise> exercises = [];
  final List<Exercise> allExercises = [
    Exercise(name: 'Push-ups', description: 'Classic upper body exercise'),
    Exercise(name: 'Squats', description: 'Lower body strength builder'),
    Exercise(name: 'Lunges', description: 'Leg and core workout'),
    Exercise(name: 'Plank', description: 'Core stability exercise'),
    Exercise(name: 'Burpees', description: 'Full body cardio workout'),
    Exercise(
        name: 'Mountain Climbers', description: 'Cardio and core exercise'),
    Exercise(name: 'Jumping Jacks', description: 'Full body cardio'),
    Exercise(name: 'Sit-ups', description: 'Core strengthening exercise'),
    Exercise(name: 'Bicycle Crunches', description: 'Targets abs and obliques'),
    Exercise(name: 'Russian Twists', description: 'Rotational core exercise'),
    Exercise(name: 'Leg Raises', description: 'Lower abs workout'),
    Exercise(
        name: 'Diamond Push-ups', description: 'Targets triceps and chest'),
    Exercise(name: 'Dips', description: 'Upper body strength exercise'),
    Exercise(name: 'Wall Sits', description: 'Isometric leg exercise'),
    Exercise(name: 'Calf Raises', description: 'Lower leg strengthening'),
    Exercise(name: 'High Knees', description: 'Cardio and leg exercise'),
    Exercise(name: 'Butt Kicks', description: 'Cardio and hamstring exercise'),
    Exercise(name: 'Jump Squats', description: 'Explosive lower body workout'),
    Exercise(
        name: 'Inchworms', description: 'Full body flexibility and strength'),
    Exercise(
        name: 'Bear Crawls',
        description: 'Full body coordination and strength'),
    Exercise(name: 'Superman', description: 'Lower back and core exercise'),
    Exercise(name: 'Bird Dogs', description: 'Core stabilization and balance'),
    Exercise(
        name: 'Glute Bridges', description: 'Targets glutes and lower back'),
    Exercise(
        name: 'Tricep Dips',
        description: 'Targets triceps using a chair or bench'),
    Exercise(
        name: 'Pike Push-ups', description: 'Shoulder and upper body strength'),
    Exercise(
        name: 'Lateral Lunges', description: 'Targets inner and outer thighs'),
    Exercise(
        name: 'Donkey Kicks', description: 'Glute and lower back exercise'),
  ];

  @override
  void initState() {
    super.initState();
    generateWorkout();
  }

  bool isExerciseInWorkout(Exercise exercise) {
    return exercises.any((e) => e.name == exercise.name);
  }

  void generateWorkout() {
    final random = Random();
    exercises.clear();
    while (exercises.length < 5 && exercises.length < allExercises.length) {
      final exercise = allExercises[random.nextInt(allExercises.length)];
      if (!isExerciseInWorkout(exercise)) {
        exercises.add(exercise);
      }
    }
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
    List<Exercise> availableExercises = allExercises
        .where((exercise) => !isExerciseInWorkout(exercise))
        .toList();

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Choose an Exercise'),
          content: SingleChildScrollView(
            child: availableExercises.isEmpty
                ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'No more pre-defined exercises available. Try creating your own custom exercise!',
                      style: TextStyle(fontStyle: FontStyle.normal),
                    ),
                  )
                : ListBody(
                    children: availableExercises
                        .map((exercise) => ListTile(
                              title: Text(exercise.name),
                              subtitle: Text(exercise.description),
                              onTap: () {
                                addExercise(exercise);
                                Navigator.of(context).pop();
                              },
                            ))
                        .toList(),
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
                  final newExercise = Exercise(
                    name: nameController.text,
                    description: descriptionController.text,
                  );
                  if (!isExerciseInWorkout(newExercise)) {
                    addExercise(newExercise);
                    Navigator.of(context).pop();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content:
                              Text('This exercise is already in your workout')),
                    );
                  }
                }
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
        title: const Text('Your Workout'),
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
