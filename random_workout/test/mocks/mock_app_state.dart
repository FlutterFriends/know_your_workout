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
  List<ExerciseModel> get currentWorkout => super.noSuchMethod(
        Invocation.getter(#currentWorkout),
        returnValue: <ExerciseModel>[],
        returnValueForMissingStub: <ExerciseModel>[],
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
        },
        returnValueForMissingStub: <String, List<MapEntry<dynamic, int>>>{
          'Muscles': [],
          'Joints': [],
        },
      );
}
