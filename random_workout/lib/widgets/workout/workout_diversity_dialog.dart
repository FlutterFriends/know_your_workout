import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_workout/models/exercise.dart';
import 'package:random_workout/providers/app_state.dart';

class WorkoutDiversityDialog extends StatelessWidget {
  const WorkoutDiversityDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final sortedTargets = appState.getSortedTargetCounts();

    return AlertDialog(
      title: Text('Workout Diversity'),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text(
              'Diversity Score: ${appState.workoutDiversityScore}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Divider(),
            ...sortedTargets.map((entry) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_getTargetLabel(entry.key)),
                      Text(entry.value.toString()),
                    ],
                  ),
                )),
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
  }

  String _getTargetLabel(dynamic target) {
    if (target is MuscleTarget) {
      return target.label;
    } else if (target is JointTarget) {
      return target.label;
    } else if (target is FocusArea) {
      return target.label;
    }
    return target.toString(); // Fallback, shouldn't be needed
  }
}
