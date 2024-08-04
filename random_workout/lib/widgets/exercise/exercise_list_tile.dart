import 'package:flutter/material.dart';
import '../../models/exercise.dart';

class ExerciseListTile extends StatelessWidget {
  final ExerciseModel exercise;
  final VoidCallback onRemove;
  final VoidCallback onShowInstructions;

  const ExerciseListTile({
    super.key,
    required this.exercise,
    required this.onRemove,
    required this.onShowInstructions,
  });

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
              if (exercise.muscleTargets != null &&
                  exercise.muscleTargets!.isNotEmpty)
                Text(
                    'Muscles: ${exercise.muscleTargets!.map((t) => getMuscleTargetLabel(t)).join(", ")}'),
            if (exercise.jointTargets != null &&
                exercise.jointTargets!.isNotEmpty)
              Text(
                  'Joints: ${exercise.jointTargets!.map((t) => getJointTargetLabel(t)).join(", ")}'),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.info_outline),
          onPressed: onShowInstructions,
        ),
      ),
    );
  }
}
