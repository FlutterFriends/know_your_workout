import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_workout/providers/app_state.dart';
import 'package:random_workout/models/exercise.dart';

class WorkoutDiversityDialog extends StatelessWidget {
  const WorkoutDiversityDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final groupedTargets = appState.getGroupedTargetCounts();

    return AlertDialog(
      title: const Text('Workout Diversity'),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text(
              'Diversity Score: ${appState.workoutDiversityScore}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Divider(),
            ...groupedTargets.entries.map(
                (group) => _buildTargetGroup(context, group.key, group.value)),
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

  Widget _buildTargetGroup(BuildContext context, String groupName,
      List<MapEntry<dynamic, int>> targets) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text(
            groupName,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        ...targets.map((entry) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_getTargetLabel(entry.key)),
                  Text(entry.value.toString()),
                ],
              ),
            )),
        if (targets.isEmpty)
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text('None', style: TextStyle(fontStyle: FontStyle.italic)),
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
