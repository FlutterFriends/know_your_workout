import 'package:mockito/mockito.dart';
import 'package:random_workout/providers/app_state.dart';
import 'package:random_workout/models/exercise.dart';

class MockAppState extends Mock implements AppState {
  @override
  bool get isDarkMode => super.noSuchMethod(
        Invocation.getter(#isDarkMode),
        returnValue: true,
        returnValueForMissingStub: true,
      );

  @override
  List<Exercise> get currentWorkout => super.noSuchMethod(
        Invocation.getter(#currentWorkout),
        returnValue: <Exercise>[],
        returnValueForMissingStub: <Exercise>[],
      );

  @override
  int get workoutDiversityScore => super.noSuchMethod(
        Invocation.getter(#workoutDiversityScore),
        returnValue: 0,
        returnValueForMissingStub: 0,
      );

  @override
  Map<String, List<MapEntry<dynamic, int>>> getGroupedTargetCounts() =>
      super.noSuchMethod(
        Invocation.method(#getGroupedTargetCounts, []),
        returnValue: <String, List<MapEntry<dynamic, int>>>{
          'Muscles': [],
          'Joints': [],
          'Focus Areas': [],
        },
        returnValueForMissingStub: <String, List<MapEntry<dynamic, int>>>{
          'Muscles': [],
          'Joints': [],
          'Focus Areas': [],
        },
      );
}
