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
  neckMuscles
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

enum SpecialTarget { neck, lowerBack, upperBack }

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

// Extensions for labels
extension MuscleTargetLabel on MuscleTarget {
  String get label {
    switch (this) {
      case MuscleTarget.quads:
        return 'Quadriceps';
      case MuscleTarget.hamstrings:
        return 'Hamstrings';
      case MuscleTarget.calves:
        return 'Calves';
      case MuscleTarget.glutes:
        return 'Glutes';
      case MuscleTarget.core:
        return 'Core';
      case MuscleTarget.chest:
        return 'Chest';
      case MuscleTarget.back:
        return 'Back';
      case MuscleTarget.shoulders:
        return 'Shoulders';
      case MuscleTarget.biceps:
        return 'Biceps';
      case MuscleTarget.triceps:
        return 'Triceps';
      case MuscleTarget.forearms:
        return 'Forearms';
      case MuscleTarget.traps:
        return 'Trapezius';
      case MuscleTarget.lats:
        return 'Latissimus Dorsi';
      case MuscleTarget.neckMuscles:
        return 'Neck Muscles';
    }
  }
}

extension JointTargetLabel on JointTarget {
  String get label {
    switch (this) {
      case JointTarget.wrist:
        return 'Wrist';
      case JointTarget.elbow:
        return 'Elbow';
      case JointTarget.shoulder:
        return 'Shoulder';
      case JointTarget.cervicalSpine:
        return 'Cervical Spine';
      case JointTarget.thoracicSpine:
        return 'Thoracic Spine';
      case JointTarget.lumbarSpine:
        return 'Lumbar Spine';
      case JointTarget.hip:
        return 'Hip';
      case JointTarget.knee:
        return 'Knee';
      case JointTarget.ankle:
        return 'Ankle';
    }
  }
}

extension SpecialTargetLabel on SpecialTarget {
  String get label {
    switch (this) {
      case SpecialTarget.neck:
        return 'Neck';
      case SpecialTarget.lowerBack:
        return 'Lower Back';
      case SpecialTarget.upperBack:
        return 'Upper Back';
    }
  }
}
