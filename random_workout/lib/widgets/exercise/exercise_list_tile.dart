import 'package:flutter/material.dart';
import '../../models/exercise.dart';

class ExerciseListTile extends StatelessWidget {
  final Exercise exercise;
  final VoidCallback onRemove;
  final VoidCallback onShowInstructions;

  const ExerciseListTile({
    Key? key,
    required this.exercise,
    required this.onRemove,
    required this.onShowInstructions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(exercise.name),
      onDismissed: (_) => onRemove(),
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      child: ListTile(
        title: Text(exercise.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(exercise.description),
            if (exercise.muscleTargets != null &&
                exercise.muscleTargets!.isNotEmpty)
              Text(
                  'Muscle Targets: ${exercise.muscleTargets!.map((t) => t.label).join(", ")}'),
            if (exercise.jointTargets != null &&
                exercise.jointTargets!.isNotEmpty)
              Text(
                  'Joint Targets: ${exercise.jointTargets!.map((t) => t.label).join(", ")}'),
            if (exercise.specialTargets != null &&
                exercise.specialTargets!.isNotEmpty)
              Text(
                  'Special Targets: ${exercise.specialTargets!.map((t) => t.label).join(", ")}'),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.info_outline),
          onPressed: onShowInstructions,
        ),
      ),
    );
  }
}
