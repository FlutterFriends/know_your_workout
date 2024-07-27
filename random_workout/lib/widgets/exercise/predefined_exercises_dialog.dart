import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/exercise.dart';
import '../../providers/app_state.dart';

class PreDefinedExercisesDialog extends StatelessWidget {
  final List<Exercise> availableExercises;
  final ExerciseCategory category;
  final VoidCallback onCreateCustomExercise;

  const PreDefinedExercisesDialog({
    Key? key,
    required this.availableExercises,
    required this.category,
    required this.onCreateCustomExercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context, listen: false);

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
                  thumbVisibility: MaterialStateProperty.all(true),
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
              onCreateCustomExercise();
            },
          ),
      ],
    );
  }
}
