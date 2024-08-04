mixin LabeledEnum on Enum {
  String get label;
}

enum ExerciseCategory {
  stretching,
  strength,
  powerAndExplosiveness,
  endurance,
  mobility,
  stability,
  balance,
  cardio,
  flexibility,
  functionalStrength,
  recovery,
  posture,
  plyometrics
}

enum MuscleTarget with LabeledEnum {
  abdominals('Abdominals'),
  biceps('Biceps'),
  calves('Calves'),
  chest('Chest'),
  forearms('Forearms'),
  glutes('Glutes'),
  hamstrings('Hamstrings'),
  lats('Lats'),
  obliques('Obliques'),
  quadriceps('Quads'),
  shoulders('Shoulders'),
  traps('Traps'),
  triceps('Triceps'),
  hipFlexors('Hip Flexors'),
  abductors('Abductors'),
  adductors('Adductors');

  @override
  final String label;
  const MuscleTarget(this.label);
}

enum JointTarget with LabeledEnum {
  ankle('Ankle'),
  elbow('Elbow'),
  hip('Hip'),
  knee('Knee'),
  neck('Neck'),
  shoulder('Shoulder'),
  spine('Spine'),
  wrist('Wrist');

  @override
  final String label;
  const JointTarget(this.label);
}

class ExerciseModel {
  final String name;
  final String description;
  final String? instructions;
  final ExerciseCategory category;
  final List<MuscleTarget>? muscleTargets;
  final List<JointTarget>? jointTargets;
  final int version;

  ExerciseModel({
    required this.name,
    required this.description,
    required this.instructions,
    required this.category,
    required this.muscleTargets,
    required this.jointTargets,
    required this.version,
  });
}

/// Extension on the [ExerciseModel] class to calculate the score of an exercise.
extension ExerciseScore on ExerciseModel {
  /// Calculates the score of an exercise based on the number of muscle targets,
  /// joint targets, and focus areas.
  ///
  /// The score is calculated by summing the lengths of the muscleTargets,
  /// jointTargets, and focusAreas lists.
  ///
  /// Returns the total score of the exercise.
  ///
  /// Scoring exercises based on the number of targets can be useful in various use-cases.
  /// For example:
  /// - Fitness tracking: By assigning a score to each exercise, you can track the overall intensity and variety of a workout routine.
  /// - Exercise selection: When designing a workout program, you can prioritize exercises with a higher score to ensure a balanced and comprehensive training session.
  /// - Progress tracking: As users progress in their fitness journey, they can aim to increase the score of their exercises by targeting different muscle groups, joints, and focus areas.
  ///
  /// The score itself represents the complexity and diversity of an exercise, providing a quantitative measure of its effectiveness and potential benefits.
  int get score {
    int score = 0;
    if (muscleTargets != null) {
      score += muscleTargets!.length;
    }
    if (jointTargets != null) {
      score += jointTargets!.length;
    }

    return score;
  }
}
