import 'package:random_workout/models/exercise.dart';

final List<Exercise> cardioExercises = [
  Exercise(
    name: 'High Knees',
    description: 'Elevates heart rate and improves coordination',
    instructions:
        "1. Stand in place with feet hip-width apart.\n2. Lift your right knee to your chest.\n3. Switch to the left knee.\n4. Alternate legs quickly, as if running in place.\n5. Continue for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.calves,
      MuscleTarget.hamstrings,
      MuscleTarget.abdominals,
      MuscleTarget.hipFlexors,
      MuscleTarget.adductors,
    ],
    jointTargets: [
      JointTarget.knee,
      JointTarget.hip,
      JointTarget.ankle,
    ],
    version: 1,
  ),
  Exercise(
    name: 'Jumping Jacks',
    description: 'Full-body cardio exercise that raises heart rate quickly',
    instructions:
        "1. Start with feet together and arms at your sides.\n2. Jump feet apart and raise arms above head simultaneously.\n3. Jump back to starting position.\n4. Repeat for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.calves,
      MuscleTarget.shoulders,
      MuscleTarget.adductors,
      MuscleTarget.abductors,
    ],
    jointTargets: [
      JointTarget.shoulder,
      JointTarget.hip,
      JointTarget.ankle,
    ],
    version: 1,
  ),
  Exercise(
    name: 'Mountain Climbers',
    description: 'Engages core while providing an intense cardio workout',
    instructions:
        "1. Start in a high plank position.\n2. Bring right knee towards chest.\n3. Quickly switch, extending right leg back while bringing left knee in.\n4. Alternate legs as if running in place.\n5. Continue for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.abdominals,
      MuscleTarget.obliques,
      MuscleTarget.quadriceps,
      MuscleTarget.shoulders,
      MuscleTarget.hipFlexors,
      MuscleTarget.adductors,
    ],
    jointTargets: [
      JointTarget.shoulder,
      JointTarget.hip,
      JointTarget.knee,
      JointTarget.ankle,
    ],
    version: 1,
  ),
  Exercise(
    name: 'Burpees',
    description: 'Full-body exercise that boosts heart rate and burns calories',
    instructions:
        "1. Start standing, then drop into a squat.\n2. Place hands on floor and kick feet back to plank position.\n3. Do a push-up (optional).\n4. Jump feet back to hands.\n5. Jump up with arms raised.\n6. Repeat for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.chest,
      MuscleTarget.abdominals,
      MuscleTarget.shoulders,
      MuscleTarget.glutes,
      MuscleTarget.hipFlexors,
    ],
    jointTargets: [
      JointTarget.shoulder,
      JointTarget.hip,
      JointTarget.knee,
      JointTarget.ankle,
    ],
    version: 1,
  ),
  Exercise(
    name: 'Jump Rope (Imaginary)',
    description:
        'Improves coordination and provides an effective cardio workout',
    instructions:
        "1. Pretend to hold a jump rope handle in each hand.\n2. Jump slightly off the ground, landing on the balls of your feet.\n3. Rotate your wrists as if turning a rope.\n4. Keep a steady rhythm and continue for 1-2 minutes.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.calves,
      MuscleTarget.quadriceps,
      MuscleTarget.shoulders,
      MuscleTarget.abdominals,
      MuscleTarget.forearms,
      MuscleTarget.hipFlexors,
    ],
    jointTargets: [
      JointTarget.ankle,
      JointTarget.knee,
      JointTarget.wrist,
    ],
    version: 1,
  ),
  Exercise(
    name: 'Squat Jumps',
    description: 'Builds lower body strength while elevating heart rate',
    instructions:
        "1. Start in a squat position with feet shoulder-width apart.\n2. Jump explosively upward.\n3. Land softly back in the squat position.\n4. Immediately repeat.\n5. Continue for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.glutes,
      MuscleTarget.calves,
      MuscleTarget.hamstrings,
      MuscleTarget.hipFlexors,
      MuscleTarget.adductors,
    ],
    jointTargets: [
      JointTarget.knee,
      JointTarget.hip,
      JointTarget.ankle,
    ],
    version: 1,
  ),
  Exercise(
    name: 'Lateral Shuffles',
    description: 'Improves agility and provides a good cardio workout',
    instructions:
        "1. Start in a slight squat position.\n2. Take 5 quick steps to the right.\n3. Then take 5 quick steps to the left.\n4. Keep core engaged and stay low throughout.\n5. Continue for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.glutes,
      MuscleTarget.calves,
      MuscleTarget.abdominals,
      MuscleTarget.abductors,
      MuscleTarget.adductors,
    ],
    jointTargets: [
      JointTarget.knee,
      JointTarget.hip,
      JointTarget.ankle,
    ],
    version: 1,
  ),
  Exercise(
    name: 'Punch and Kick',
    description:
        'Combines upper and lower body movements for a full-body cardio workout',
    instructions:
        "1. Start in a fighting stance.\n2. Punch with right arm, then left arm.\n3. Follow with a front kick using right leg.\n4. Repeat on the other side.\n5. Continue alternating for 1-2 minutes.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.shoulders,
      MuscleTarget.abdominals,
      MuscleTarget.obliques,
      MuscleTarget.quadriceps,
      MuscleTarget.glutes,
      MuscleTarget.hipFlexors,
      MuscleTarget.calves,
      MuscleTarget.abductors,
    ],
    jointTargets: [
      JointTarget.shoulder,
      JointTarget.hip,
      JointTarget.knee,
      JointTarget.ankle,
    ],
    version: 1,
  ),
  Exercise(
    name: 'Speed Skaters',
    description:
        'Lateral movement exercise that improves balance and burns calories',
    instructions:
        "1. Start with feet shoulder-width apart.\n2. Jump to the right, landing on right foot.\n3. Swing left foot behind right ankle and left arm in front of you.\n4. Jump to the left, reversing the position.\n5. Continue alternating for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.glutes,
      MuscleTarget.calves,
      MuscleTarget.abdominals,
      MuscleTarget.adductors,
      MuscleTarget.abductors,
    ],
    jointTargets: [
      JointTarget.knee,
      JointTarget.hip,
      JointTarget.ankle,
    ],
    version: 1,
  ),
  Exercise(
    name: 'Plank Jacks',
    description: 'Combines core stability with cardio for an effective workout',
    instructions:
        "1. Start in a high plank position.\n2. Jump both feet out wide.\n3. Immediately jump feet back together.\n4. Keep core engaged throughout.\n5. Continue for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.abdominals,
      MuscleTarget.shoulders,
      MuscleTarget.quadriceps,
      MuscleTarget.calves,
      MuscleTarget.glutes,
      MuscleTarget.adductors,
      MuscleTarget.abductors,
    ],
    jointTargets: [
      JointTarget.shoulder,
      JointTarget.hip,
      JointTarget.ankle,
    ],
    version: 1,
  ),
  Exercise(
    name: 'Butt Kicks',
    description: 'Elevates heart rate while focusing on hamstring flexibility',
    instructions:
        "1. Stand in place with feet hip-width apart.\n2. Run in place, kicking your heels up towards your buttocks.\n3. Keep your thighs relatively stationary.\n4. Swing your arms as if running.\n5. Continue for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.hamstrings,
      MuscleTarget.calves,
      MuscleTarget.quadriceps,
      MuscleTarget.hipFlexors,
    ],
    jointTargets: [
      JointTarget.knee,
      JointTarget.hip,
    ],
    version: 1,
  ),
  Exercise(
    name: 'Star Jumps',
    description: 'Full-body exercise that quickly raises heart rate',
    instructions:
        "1. Start in a squat position with arms by your sides.\n2. Jump up explosively, spreading arms and legs out to form a star shape.\n3. Land softly back in the squat position.\n4. Immediately repeat.\n5. Continue for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.glutes,
      MuscleTarget.shoulders,
      MuscleTarget.calves,
      MuscleTarget.abdominals,
      MuscleTarget.adductors,
      MuscleTarget.abductors,
    ],
    jointTargets: [
      JointTarget.knee,
      JointTarget.hip,
      JointTarget.shoulder,
      JointTarget.ankle,
    ],
    version: 1,
  ),
  Exercise(
    name: 'Skater Hops',
    description:
        'Lateral movement exercise that improves balance and coordination',
    instructions:
        "1. Start by jumping to your right side, landing on your right foot.\n2. Swing your left foot behind you and left arm in front of you.\n3. Hold briefly, then jump to your left side.\n4. Continue alternating sides.\n5. Perform for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.glutes,
      MuscleTarget.calves,
      MuscleTarget.abdominals,
      MuscleTarget.adductors,
      MuscleTarget.abductors,
    ],
    jointTargets: [
      JointTarget.knee,
      JointTarget.hip,
      JointTarget.ankle,
    ],
    version: 1,
  ),
  Exercise(
    name: 'Invisible Jump Rope Sprints',
    description: 'High-intensity cardio that mimics sprinting in place',
    instructions:
        "1. Start with feet together, arms at sides.\n2. Quickly alternate lifting knees high while swinging arms as if holding a jump rope.\n3. Stay on balls of feet and move as fast as possible.\n4. Continue for 30 seconds, then rest for 30 seconds.\n5. Repeat for 3-5 rounds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.calves,
      MuscleTarget.quadriceps,
      MuscleTarget.hamstrings,
      MuscleTarget.abdominals,
      MuscleTarget.hipFlexors,
      MuscleTarget.adductors,
    ],
    jointTargets: [
      JointTarget.knee,
      JointTarget.hip,
      JointTarget.ankle,
      JointTarget.shoulder,
    ],
    version: 1,
  ),
  Exercise(
    name: 'Half Burpees',
    description:
        'Modified burpee that still provides an intense cardio workout',
    instructions:
        "1. Start in a standing position.\n2. Quickly drop into a squat and place hands on floor.\n3. Kick feet back to plank position.\n4. Immediately jump feet back to hands.\n5. Stand up.\n6. Repeat for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.abdominals,
      MuscleTarget.shoulders,
      MuscleTarget.glutes,
      MuscleTarget.hipFlexors,
    ],
    jointTargets: [
      JointTarget.knee,
      JointTarget.hip,
      JointTarget.shoulder,
      JointTarget.ankle,
    ],
    version: 1,
  ),
  Exercise(
    name: 'Woodchoppers',
    description:
        'Rotational exercise that targets obliques and improves core stability',
    instructions:
        "1. Stand with feet shoulder-width apart.\n2. Hold a weight or medicine ball with both hands.\n3. Rotate your torso and arms from high on one side to low on the opposite side.\n4. Return to starting position.\n5. Perform 10-15 reps on each side.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.obliques,
      MuscleTarget.abdominals,
      MuscleTarget.shoulders
    ],
    jointTargets: [JointTarget.spine, JointTarget.shoulder],
    version: 1,
  ),
  Exercise(
    name: 'Standing Cross-Body Crunch',
    description: 'Engages obliques and improves coordination',
    instructions:
        "1. Stand with feet shoulder-width apart.\n2. Lift your right knee and left elbow, bringing them together in front of your body.\n3. Return to starting position.\n4. Repeat on the other side.\n5. Alternate sides for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.obliques,
      MuscleTarget.hipFlexors,
      MuscleTarget.abdominals
    ],
    jointTargets: [JointTarget.hip, JointTarget.knee, JointTarget.shoulder],
    version: 1,
  ),
  Exercise(
    name: 'Lateral Lunges with Arm Raise',
    description: 'Targets abductors, hip flexors, and shoulders',
    instructions:
        "1. Stand with feet together.\n2. Take a large step to the right, lowering into a side lunge.\n3. Simultaneously raise both arms overhead.\n4. Push off right foot to return to starting position.\n5. Repeat on the left side.\n6. Alternate sides for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.abductors,
      MuscleTarget.hipFlexors,
      MuscleTarget.shoulders,
      MuscleTarget.quadriceps
    ],
    jointTargets: [JointTarget.hip, JointTarget.knee, JointTarget.shoulder],
    version: 1,
  ),
  Exercise(
    name: 'Plank to Downward Dog Tap',
    description: 'Engages core, shoulders, and improves flexibility',
    instructions:
        "1. Start in a high plank position.\n2. Push hips up and back into downward dog position.\n3. Lift right hand and tap left ankle.\n4. Return to downward dog.\n5. Repeat with left hand tapping right ankle.\n6. Return to plank position.\n7. Continue for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.abdominals,
      MuscleTarget.shoulders,
      MuscleTarget.triceps,
      MuscleTarget.hipFlexors
    ],
    jointTargets: [JointTarget.shoulder, JointTarget.wrist, JointTarget.hip],
    version: 1,
  ),
  Exercise(
    name: 'Sumo Squat with Upright Row',
    description:
        'Combines lower body and upper body movements for a full-body cardio exercise',
    instructions:
        "1. Stand with feet wider than shoulder-width, toes pointed out.\n2. Hold a weight or resistance band in front of thighs.\n3. Lower into a sumo squat.\n4. As you stand, perform an upright row by lifting the weight to chin level, elbows out.\n5. Lower the weight as you return to squat position.\n6. Repeat for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.adductors,
      MuscleTarget.shoulders,
      MuscleTarget.traps
    ],
    jointTargets: [JointTarget.hip, JointTarget.knee, JointTarget.shoulder],
    version: 1,
  ),
  Exercise(
    name: 'Standing Oblique Crunch',
    description: 'Targets obliques while improving balance',
    instructions:
        "1. Stand with feet shoulder-width apart.\n2. Place hands behind head, elbows out.\n3. Lift right knee towards right elbow, crunching sideways.\n4. Lower leg and repeat on the left side.\n5. Alternate sides for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.obliques,
      MuscleTarget.hipFlexors,
      MuscleTarget.abdominals
    ],
    jointTargets: [JointTarget.hip, JointTarget.knee, JointTarget.spine],
    version: 1,
  ),
  Exercise(
    name: 'Inchworm Walk with Push-Up',
    description: 'Full-body exercise that targets upper body and core',
    instructions:
        "1. Stand with feet hip-width apart.\n2. Bend at the waist and walk hands out to a high plank position.\n3. Perform a push-up.\n4. Walk feet towards hands, keeping legs straight.\n5. Stand up and repeat for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.chest,
      MuscleTarget.triceps,
      MuscleTarget.shoulders,
      MuscleTarget.abdominals,
      MuscleTarget.hamstrings
    ],
    jointTargets: [
      JointTarget.shoulder,
      JointTarget.elbow,
      JointTarget.wrist,
      JointTarget.hip
    ],
    version: 1,
  ),
];
