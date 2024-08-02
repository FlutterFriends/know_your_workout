import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/exercise.dart';
import '../providers/app_state.dart';

class TargetSelectionPage extends StatelessWidget {
  const TargetSelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Select Workout Targets'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Muscles'),
              Tab(text: 'Joints'),
              Tab(text: 'Focus Areas'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildTargetList<MuscleTarget>(context),
            _buildTargetList<JointTarget>(context),
            _buildTargetList<FocusArea>(context),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Icon(Icons.check),
        ),
      ),
    );
  }

  Widget _buildTargetList<T extends Enum>(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final targets = T == MuscleTarget
        ? MuscleTarget.values
        : T == JointTarget
            ? JointTarget.values
            : FocusArea.values;

    return ListView.builder(
      itemCount: targets.length,
      itemBuilder: (context, index) {
        final target = targets[index];
        return CheckboxListTile(
          title: Text(target.toString().split('.').last),
          value: appState.isTargetSelected(target),
          onChanged: (bool? value) {
            appState.toggleTargetSelection(target);
          },
        );
      },
    );
  }
}
