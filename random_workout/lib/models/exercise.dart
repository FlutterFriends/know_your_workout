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
  abductors('Abductors'),
  adductors('Adductors'),
  back('Back'),
  biceps('Biceps'),
  calves('Calves'),
  chest('Chest'),
  core('Core'),
  erectorSpinae('Erector Spinae'),
  forearms('Forearms'),
  glutes('Glutes'),
  hamstrings('Hamstrings'),
  hips('Hips'),
  hipFlexors('Hip Flexors'),
  lats('Latissimus Dorsi'),
  lowerBack('Lower Back'),
  lowerBody('Lower Body'),
  neck('Neck'),
  neckMuscles('Neck Muscles'),
  obliques('Obliques'),
  piriformis('Piriformis'),
  quadriceps('Quadriceps'),
  rhomboids('Rhomboids'),
  rotatorCuff('Rotator Cuff'),
  serratus('Serratus'),
  shoulders('Shoulders'),
  tibialis('Tibialis'),
  traps('Trapezius'),
  triceps('Triceps'),
  upperBack('Upper Back');

  @override
  final String label;
  const MuscleTarget(this.label);
}

enum JointTarget with LabeledEnum {
  ankle('Ankle'),
  cervicalSpine('Cervical Spine'),
  elbow('Elbow'),
  hip('Hip'),
  knee('Knee'),
  lumbarSpine('Lumbar Spine'),
  shoulder('Shoulder'),
  spine('Spine'),
  thoracicSpine('Thoracic Spine'),
  wrist('Wrist');

  @override
  final String label;
  const JointTarget(this.label);
}

enum FocusArea with LabeledEnum {
  ankles('Ankles'),
  arms('Arms'),
  calves('Calves'),
  chest('Chest'),
  core('Core'),
  feet('Feet'),
  forearms('Forearms'),
  fullBody('Full Body'),
  glutes('Glutes'),
  hands('Hands'),
  head('Head'),
  hips('Hips'),
  knees('Knees'),
  legs('Legs'),
  lowerBack('Lower Back'),
  lowerBody('Lower Body'),
  neck('Neck'),
  shoulders('Shoulders'),
  thighs('Thighs'),
  upperBack('Upper Back'),
  upperBody('Upper Body'),
  wrists('Wrists');

  @override
  final String label;
  const FocusArea(this.label);
}

class Exercise {
  final String name;
  final String description;
  final String? instructions;
  final ExerciseCategory category;
  final List<MuscleTarget>? muscleTargets;
  final List<JointTarget>? jointTargets;
  final List<FocusArea>? focusAreas;

  Exercise({
    required this.name,
    required this.description,
    required this.instructions,
    required this.category,
    required this.muscleTargets,
    required this.jointTargets,
    required this.focusAreas,
  });
}

/// Extension on the [Exercise] class to calculate the score of an exercise.
extension ExerciseScore on Exercise {
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
    if (focusAreas != null) {
      score += focusAreas!.length;
    }
    return score;
  }
}
