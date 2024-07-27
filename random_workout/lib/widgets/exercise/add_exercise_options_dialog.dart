import 'package:flutter/material.dart';

class AddExerciseOptionsDialog extends StatelessWidget {
  final VoidCallback onChoosePreDefined;
  final VoidCallback onCreateCustom;

  const AddExerciseOptionsDialog({
    Key? key,
    required this.onChoosePreDefined,
    required this.onCreateCustom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Exercise'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            child: const Text('Choose from pre-defined exercises'),
            onPressed: () {
              Navigator.of(context).pop();
              onChoosePreDefined();
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Create a custom exercise'),
            onPressed: () {
              Navigator.of(context).pop();
              onCreateCustom();
            },
          ),
        ],
      ),
    );
  }
}
