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
  neckMuscles,
  obliques,
  hipFlexors,
  adductors,
  abductors,
  rotatorCuff,
  erectorSpinae,
  rhomboids,
  serratus,
  tibialis,
  hips,
  neck,
  lowerBack,
  upperBack,
  lowerBody,
  quadriceps,
  piriformis,
}

enum JointTarget {
  wrist, // radiocarpal
  elbow, // humeroulnar
  shoulder, // glenohumeral
  cervicalSpine, // cervicothoracic
  thoracicSpine, // thoracolumbar
  lumbarSpine, // lumbosacral
  hip, // coxal
  knee, // tibiofemoral
  ankle, // talocrural
  spine, // vertebral column
  temporomandibular, // jaw joint
  acromioclavicular, // AC joint
  sternoclavicular, // SC joint
  sacroiliac, // SI joint
  intervertebral, // between vertebrae
}

enum FocusArea {
  head,
  neck,
  shoulders,
  chest,
  upperBack,
  lowerBack,
  arms,
  forearms,
  wrists,
  hands,
  core,
  hips,
  glutes,
  thighs,
  knees,
  calves,
  ankles,
  feet,
  upperBody,
  lowerBody,
  fullBody,
  legs,
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
    this.instructions,
    required this.category,
    this.muscleTargets,
    this.jointTargets,
    this.focusAreas,
  });
}

// Extensions for labels
extension MuscleTargetLabel on MuscleTarget {
  String get label {
    switch (this) {
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
      case MuscleTarget.obliques:
        return 'Obliques';
      case MuscleTarget.hipFlexors:
        return 'Hip Flexors';
      case MuscleTarget.adductors:
        return 'Adductors';
      case MuscleTarget.abductors:
        return 'Abductors';
      case MuscleTarget.rotatorCuff:
        return 'Rotator Cuff';
      case MuscleTarget.erectorSpinae:
        return 'Erector Spinae';
      case MuscleTarget.rhomboids:
        return 'Rhomboids';
      case MuscleTarget.serratus:
        return 'Serratus';
      case MuscleTarget.tibialis:
        return 'Tibialis';
      case MuscleTarget.hips:
        return 'Hips';
      case MuscleTarget.neck:
        return 'Neck';
      case MuscleTarget.lowerBack:
        return 'Lower Back';
      case MuscleTarget.upperBack:
        return 'Upper Back';
      case MuscleTarget.lowerBody:
        return 'Lower Body';
      case MuscleTarget.abdominals:
        return 'Abdominals';
      case MuscleTarget.quadriceps:
        return 'Quadriceps';
      case MuscleTarget.piriformis:
        return 'Piriformis';
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
      case JointTarget.spine:
        return 'Spine';
      case JointTarget.temporomandibular:
        return 'Temporomandibular';
      case JointTarget.acromioclavicular:
        return 'Acromioclavicular';
      case JointTarget.sternoclavicular:
        return 'Sternoclavicular';
      case JointTarget.sacroiliac:
        return 'Sacroiliac';
      case JointTarget.intervertebral:
        return 'Intervertebral';
    }
  }
}

extension FocusAreaLabel on FocusArea {
  String get label {
    switch (this) {
      case FocusArea.head:
        return 'Head';
      case FocusArea.neck:
        return 'Neck';
      case FocusArea.shoulders:
        return 'Shoulders';
      case FocusArea.chest:
        return 'Chest';
      case FocusArea.upperBack:
        return 'Upper Back';
      case FocusArea.lowerBack:
        return 'Lower Back';
      case FocusArea.arms:
        return 'Arms';
      case FocusArea.forearms:
        return 'Forearms';
      case FocusArea.wrists:
        return 'Wrists';
      case FocusArea.hands:
        return 'Hands';
      case FocusArea.core:
        return 'Core';
      case FocusArea.hips:
        return 'Hips';
      case FocusArea.glutes:
        return 'Glutes';
      case FocusArea.thighs:
        return 'Thighs';
      case FocusArea.knees:
        return 'Knees';
      case FocusArea.calves:
        return 'Calves';
      case FocusArea.ankles:
        return 'Ankles';
      case FocusArea.feet:
        return 'Feet';
      case FocusArea.upperBody:
        return 'Upper Body';
      case FocusArea.lowerBody:
        return 'Lower Body';
      case FocusArea.fullBody:
        return 'Full Body';
      case FocusArea.legs:
        return 'Legs';
    }
  }
}
