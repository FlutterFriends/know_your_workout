enum ExerciseCategory {
  stretching,
  strength,
  mobility,
  balance,
  cardio,
}

enum MuscleTarget {
  quads,
  hamstrings,
  calves,
  glutes,
  core,
  chest,
  back,
  shoulders,
  biceps,
  triceps,
  forearms,
  traps,
  lats,
  neckMuscles // Added neck muscles
}

enum JointTarget {
  wrist,
  elbow,
  shoulder,
  cervicalSpine,
  thoracicSpine,
  lumbarSpine,
  hip,
  knee,
  ankle
}

enum SpecialTarget {
  neck,
  lowerBack,
  upperBack,
}

class Exercise {
  final String name;
  final String description;
  final String? instructions;
  final ExerciseCategory category;
  final List<MuscleTarget>? muscleTargets;
  final List<JointTarget>? jointTargets;
  final List<SpecialTarget>? specialTargets;

  Exercise({
    required this.name,
    required this.description,
    this.instructions,
    required this.category,
    this.muscleTargets,
    this.jointTargets,
    this.specialTargets,
  });
}
