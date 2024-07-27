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
      MuscleTarget.core
    ],
    jointTargets: [JointTarget.knee, JointTarget.hip],
    focusAreas: [FocusArea.legs, FocusArea.core],
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
      MuscleTarget.shoulders
    ],
    jointTargets: [JointTarget.shoulder, JointTarget.hip, JointTarget.ankle],
    focusAreas: [FocusArea.legs, FocusArea.arms],
  ),
  Exercise(
    name: 'Mountain Climbers',
    description: 'Engages core while providing an intense cardio workout',
    instructions:
        "1. Start in a high plank position.\n2. Bring right knee towards chest.\n3. Quickly switch, extending right leg back while bringing left knee in.\n4. Alternate legs as if running in place.\n5. Continue for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.core,
      MuscleTarget.quadriceps,
      MuscleTarget.shoulders
    ],
    jointTargets: [JointTarget.shoulder, JointTarget.hip, JointTarget.knee],
    focusAreas: [FocusArea.core, FocusArea.legs],
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
      MuscleTarget.core,
      MuscleTarget.shoulders
    ],
    jointTargets: [JointTarget.shoulder, JointTarget.hip, JointTarget.knee],
    focusAreas: [FocusArea.fullBody],
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
      MuscleTarget.shoulders
    ],
    jointTargets: [JointTarget.ankle, JointTarget.knee, JointTarget.wrist],
    focusAreas: [FocusArea.legs, FocusArea.arms],
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
      MuscleTarget.calves
    ],
    jointTargets: [JointTarget.knee, JointTarget.hip, JointTarget.ankle],
    focusAreas: [FocusArea.legs],
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
      MuscleTarget.calves
    ],
    jointTargets: [JointTarget.knee, JointTarget.hip, JointTarget.ankle],
    focusAreas: [FocusArea.legs],
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
      MuscleTarget.core,
      MuscleTarget.quadriceps
    ],
    jointTargets: [JointTarget.shoulder, JointTarget.hip, JointTarget.knee],
    focusAreas: [FocusArea.fullBody],
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
      MuscleTarget.calves
    ],
    jointTargets: [JointTarget.knee, JointTarget.hip, JointTarget.ankle],
    focusAreas: [FocusArea.legs],
  ),
  Exercise(
    name: 'Plank Jacks',
    description: 'Combines core stability with cardio for an effective workout',
    instructions:
        "1. Start in a high plank position.\n2. Jump both feet out wide.\n3. Immediately jump feet back together.\n4. Keep core engaged throughout.\n5. Continue for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [
      MuscleTarget.core,
      MuscleTarget.shoulders,
      MuscleTarget.quadriceps
    ],
    jointTargets: [JointTarget.shoulder, JointTarget.hip],
    focusAreas: [FocusArea.core, FocusArea.legs],
  ),
  Exercise(
    name: 'Butt Kicks',
    description: 'Elevates heart rate while focusing on hamstring flexibility',
    instructions:
        "1. Stand in place with feet hip-width apart.\n2. Run in place, kicking your heels up towards your buttocks.\n3. Keep your thighs relatively stationary.\n4. Swing your arms as if running.\n5. Continue for 30-60 seconds.",
    category: ExerciseCategory.cardio,
    muscleTargets: [MuscleTarget.hamstrings, MuscleTarget.calves],
    jointTargets: [JointTarget.knee, JointTarget.hip],
    focusAreas: [FocusArea.legs],
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
      MuscleTarget.shoulders
    ],
    jointTargets: [JointTarget.knee, JointTarget.hip, JointTarget.shoulder],
    focusAreas: [FocusArea.fullBody],
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
      MuscleTarget.calves
    ],
    jointTargets: [JointTarget.knee, JointTarget.hip, JointTarget.ankle],
    focusAreas: [FocusArea.legs],
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
      MuscleTarget.hamstrings
    ],
    jointTargets: [JointTarget.knee, JointTarget.hip, JointTarget.ankle],
    focusAreas: [FocusArea.legs],
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
      MuscleTarget.core,
      MuscleTarget.shoulders
    ],
    jointTargets: [JointTarget.knee, JointTarget.hip, JointTarget.shoulder],
    focusAreas: [FocusArea.fullBody],
  ),
];
