import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/exercise.dart';
import '../providers/app_state.dart';

class TargetSelectionPage extends StatelessWidget {
  const TargetSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Select Workout Targets'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Muscles'),
              Tab(text: 'Joints'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildTargetList<MuscleTarget>(context),
            _buildTargetList<JointTarget>(context),
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
    final targets =
        T == MuscleTarget ? MuscleTarget.values : JointTarget.values;

    return ListView.builder(
      itemCount: targets.length,
      itemBuilder: (context, index) {
        final target = targets[index];
        return CheckboxListTile(
          title: Text(_getLabel(target)),
          value: appState.isTargetSelected(target),
          onChanged: (bool? value) {
            appState.toggleTargetSelection(target);
          },
        );
      },
    );
  }

  String _getLabel(Enum target) {
    if (target is MuscleTarget) {
      return getMuscleTargetLabel(target);
    } else if (target is JointTarget) {
      return getJointTargetLabel(target);
    }

    return target.toString().split('.').last;
  }
}
