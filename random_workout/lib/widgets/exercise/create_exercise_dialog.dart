import 'package:flutter/material.dart';
import '../../models/exercise.dart';

class CreateExerciseDialog extends StatefulWidget {
  final ExerciseCategory category;
  final Function(Exercise) onExerciseCreated;

  const CreateExerciseDialog({
    super.key,
    required this.category,
    required this.onExerciseCreated,
  });

  @override
  _CreateExerciseDialogState createState() => _CreateExerciseDialogState();
}

class _CreateExerciseDialogState extends State<CreateExerciseDialog> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final instructionsController = TextEditingController();
  List<MuscleTarget> selectedMuscleTargets = [];
  List<JointTarget> selectedJointTargets = [];
  List<SpecialTarget> selectedSpecialTargets = [];

  @override
  Widget build(BuildContext context) {
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
            TextField(
              controller: instructionsController,
              decoration: const InputDecoration(hintText: "Instructions"),
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            _buildTargetSection<MuscleTarget>(
              'Muscle Targets',
              MuscleTarget.values,
              selectedMuscleTargets,
            ),
            _buildTargetSection<JointTarget>(
              'Joint Targets',
              JointTarget.values,
              selectedJointTargets,
            ),
            _buildTargetSection<SpecialTarget>(
              'Special Targets',
              SpecialTarget.values,
              selectedSpecialTargets,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        TextButton(
          onPressed: _createExercise,
          child: const Text('Add'),
        ),
      ],
    );
  }

  Widget _buildTargetSection<T>(
      String title, List<T> targets, List<T> selectedTargets) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$title (Optional):'),
        Wrap(
          spacing: 8,
          children: targets.map((target) {
            return FilterChip(
              label: Text(_getLabel(target)),
              selected: selectedTargets.contains(target),
              onSelected: (selected) {
                setState(() {
                  if (selected) {
                    selectedTargets.add(target);
                  } else {
                    selectedTargets.remove(target);
                  }
                });
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  String _getLabel(dynamic target) {
    if (target is MuscleTarget) {
      return target.label;
    } else if (target is JointTarget) {
      return target.label;
    } else if (target is SpecialTarget) {
      return target.label;
    }
    return target.toString();
  }

  void _createExercise() {
    if (nameController.text.isNotEmpty &&
        descriptionController.text.isNotEmpty) {
      final newExercise = Exercise(
        name: nameController.text,
        description: descriptionController.text,
        instructions: instructionsController.text.isNotEmpty
            ? instructionsController.text
            : null,
        category: widget.category,
        muscleTargets:
            selectedMuscleTargets.isNotEmpty ? selectedMuscleTargets : null,
        jointTargets:
            selectedJointTargets.isNotEmpty ? selectedJointTargets : null,
        specialTargets:
            selectedSpecialTargets.isNotEmpty ? selectedSpecialTargets : null,
      );
      widget.onExerciseCreated(newExercise);
      Navigator.of(context).pop();
    }
  }
}
