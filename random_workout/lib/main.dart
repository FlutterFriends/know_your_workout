import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Workout Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WorkoutPage(),
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
  ];

  @override
  void initState() {
    super.initState();
    generateWorkout();
  }

  void generateWorkout() {
    final random = Random();
    exercises = List.generate(
      5,
      (_) => allExercises[random.nextInt(allExercises.length)],
    );
    setState(() {});
  }

  void removeExercise(int index) {
    setState(() {
      exercises.removeAt(index);
    });
  }

  void addExercise(Exercise exercise) {
    setState(() {
      exercises.add(exercise);
    });
  }

  Future<void> _showAddExerciseDialog() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Exercise'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ElevatedButton(
                  child: Text('Choose from pre-defined exercises'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    _showPreDefinedExercisesDialog();
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  child: Text('Create a custom exercise'),
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
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose an Exercise'),
          content: SingleChildScrollView(
            child: ListBody(
              children: allExercises
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
          title: Text('Create New Exercise'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(hintText: "Exercise Name"),
                ),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(hintText: "Description"),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    descriptionController.text.isNotEmpty) {
                  addExercise(Exercise(
                    name: nameController.text,
                    description: descriptionController.text,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Workout'),
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
              child: Icon(Icons.delete, color: Colors.white),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
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
            child: Icon(Icons.refresh),
            heroTag: null,
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: _showAddExerciseDialog,
            child: Icon(Icons.add),
            heroTag: null,
          ),
        ],
      ),
    );
  }
}
