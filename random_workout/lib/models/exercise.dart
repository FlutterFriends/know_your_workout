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

enum MuscleTarget {
  abdominals,
  biceps,
  calves,
  chest,
  forearms,
  glutes,
  hamstrings,
  lats,
  obliques,
  quadriceps,
  shoulders,
  traps,
  triceps,
  hipFlexors,
  abductors,
  adductors
}

enum JointTarget { ankle, elbow, hip, knee, neck, shoulder, spine, wrist }

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
  /// and joint targets.
  ///
  /// The score is calculated by summing the lengths of the muscleTargets,
  /// and jointTargets lists.
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

/// Returns the label of the given [MuscleTarget].
String getMuscleTargetLabel(MuscleTarget target) {
  switch (target) {
    case MuscleTarget.abdominals:
      return 'Abdominals';
    case MuscleTarget.biceps:
      return 'Biceps';
    case MuscleTarget.calves:
      return 'Calves';
    case MuscleTarget.chest:
      return 'Chest';
    case MuscleTarget.forearms:
      return 'Forearms';
    case MuscleTarget.glutes:
      return 'Glutes';
    case MuscleTarget.hamstrings:
      return 'Hamstrings';
    case MuscleTarget.lats:
      return 'Lats';
    case MuscleTarget.obliques:
      return 'Obliques';
    case MuscleTarget.quadriceps:
      return 'Quads';
    case MuscleTarget.shoulders:
      return 'Shoulders';
    case MuscleTarget.traps:
      return 'Traps';
    case MuscleTarget.triceps:
      return 'Triceps';
    case MuscleTarget.hipFlexors:
      return 'Hip Flexors';
    case MuscleTarget.abductors:
      return 'Abductors';
    case MuscleTarget.adductors:
      return 'Adductors';
  }
}

/// Returns the label of the given [JointTarget].
String getJointTargetLabel(JointTarget target) {
  switch (target) {
    case JointTarget.ankle:
      return 'Ankle';
    case JointTarget.elbow:
      return 'Elbow';
    case JointTarget.hip:
      return 'Hip';
    case JointTarget.knee:
      return 'Knee';
    case JointTarget.neck:
      return 'Neck';
    case JointTarget.shoulder:
      return 'Shoulder';
    case JointTarget.spine:
      return 'Spine';
    case JointTarget.wrist:
      return 'Wrist';
  }
}
