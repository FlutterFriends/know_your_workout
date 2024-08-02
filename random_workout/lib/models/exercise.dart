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
  hamstrings('Hamstrings'),
  calves('Calves'),
  glutes('Glutes'),
  core('Core'),
  chest('Chest'),
  back('Back'),
  shoulders('Shoulders'),
  biceps('Biceps'),
  triceps('Triceps'),
  forearms('Forearms'),
  traps('Trapezius'),
  lats('Latissimus Dorsi'),
  neckMuscles('Neck Muscles'),
  obliques('Obliques'),
  hipFlexors('Hip Flexors'),
  adductors('Adductors'),
  abductors('Abductors'),
  rotatorCuff('Rotator Cuff'),
  erectorSpinae('Erector Spinae'),
  rhomboids('Rhomboids'),
  serratus('Serratus'),
  tibialis('Tibialis'),
  hips('Hips'),
  neck('Neck'),
  lowerBack('Lower Back'),
  upperBack('Upper Back'),
  lowerBody('Lower Body'),
  quadriceps('Quadriceps'),
  piriformis('Piriformis');

  @override
  final String label;
  const MuscleTarget(this.label);
}

enum JointTarget with LabeledEnum {
  wrist('Wrist'),
  elbow('Elbow'),
  shoulder('Shoulder'),
  cervicalSpine('Cervical Spine'),
  thoracicSpine('Thoracic Spine'),
  lumbarSpine('Lumbar Spine'),
  hip('Hip'),
  knee('Knee'),
  ankle('Ankle'),
  spine('Spine'),
  temporomandibular('Temporomandibular'),
  acromioclavicular('Acromioclavicular'),
  sternoclavicular('Sternoclavicular'),
  sacroiliac('Sacroiliac'),
  intervertebral('Intervertebral');

  @override
  final String label;
  const JointTarget(this.label);
}

enum FocusArea with LabeledEnum {
  head('Head'),
  neck('Neck'),
  shoulders('Shoulders'),
  chest('Chest'),
  upperBack('Upper Back'),
  lowerBack('Lower Back'),
  arms('Arms'),
  forearms('Forearms'),
  wrists('Wrists'),
  hands('Hands'),
  core('Core'),
  hips('Hips'),
  glutes('Glutes'),
  thighs('Thighs'),
  knees('Knees'),
  calves('Calves'),
  ankles('Ankles'),
  feet('Feet'),
  upperBody('Upper Body'),
  lowerBody('Lower Body'),
  fullBody('Full Body'),
  legs('Legs');

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
