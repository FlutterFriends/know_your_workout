import '../models/exercise.dart';

import '../models/exercise.dart';

final List<Exercise> strengthExercises = [
  Exercise(
    name: 'Push-ups',
    description:
        'Classic upper body exercise targeting chest, shoulders, and triceps',
    instructions:
        "1. Start in a plank position with hands shoulder-width apart.\n2. Lower your body until your chest nearly touches the floor.\n3. Push your body back up to the starting position.\n4. Repeat for desired reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [
      MuscleTarget.chest,
      MuscleTarget.shoulders,
      MuscleTarget.triceps,
    ],
    jointTargets: [JointTarget.shoulder, JointTarget.elbow],
  ),
  Exercise(
    name: 'Squats',
    description:
        'Lower body strength builder focusing on quads, hamstrings, and glutes',
    instructions:
        "1. Stand with feet shoulder-width apart.\n2. Lower your body as if sitting back into a chair.\n3. Keep your chest up and knees over (not past) your toes.\n4. Lower until thighs are parallel to the ground.\n5. Push through your heels to return to standing.\n6. Repeat for desired reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.hamstrings,
      MuscleTarget.glutes,
    ],
    jointTargets: [JointTarget.knee, JointTarget.hip],
  ),
  Exercise(
    name: 'Lunges',
    description:
        'Unilateral leg exercise working quads, hamstrings, and glutes',
    instructions:
        "1. Stand with feet hip-width apart.\n2. Step forward with one leg and lower your hips.\n3. Both knees should bend at about 90-degree angles.\n4. Push back to the starting position.\n5. Repeat, alternating legs, for desired reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.hamstrings,
      MuscleTarget.glutes,
    ],
    jointTargets: [JointTarget.knee, JointTarget.hip],
  ),
  Exercise(
    name: 'Plank',
    description: 'Core stability exercise engaging the entire midsection',
    instructions:
        "1. Start in a push-up position with forearms on the ground.\n2. Keep your body in a straight line from head to heels.\n3. Hold this position for the desired amount of time.",
    category: ExerciseCategory.strength,
    muscleTargets: [MuscleTarget.abdominals, MuscleTarget.obliques],
    jointTargets: [JointTarget.spine],
  ),
  Exercise(
    name: 'Burpees',
    description: 'Full body cardio and strength exercise',
    instructions:
        "1. Start in a standing position.\n2. Drop into a squat position with your hands on the ground.\n3. Kick your feet back, landing in a plank position.\n4. Perform a push-up.\n5. Immediately return your feet to the squat position.\n6. Jump up from the squat position.\n7. Repeat for desired reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.chest,
      MuscleTarget.abdominals,
      MuscleTarget.shoulders,
    ],
    jointTargets: [JointTarget.shoulder, JointTarget.hip, JointTarget.knee],
  ),
  Exercise(
    name: 'Mountain Climbers',
    description:
        'Dynamic core exercise also engaging shoulders and hip flexors',
    instructions:
        "1. Start in a plank position.\n2. Bring one knee towards your chest.\n3. Quickly switch and bring the other knee in.\n4. Continue alternating legs in a running motion.\n5. Maintain for desired duration or reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [
      MuscleTarget.abdominals,
      MuscleTarget.quadriceps,
      MuscleTarget.shoulders,
      MuscleTarget.hipFlexors,
    ],
    jointTargets: [JointTarget.shoulder, JointTarget.hip, JointTarget.knee],
  ),
  Exercise(
    name: 'Dips',
    description: 'Upper body exercise targeting triceps and chest',
    instructions:
        "1. Use parallel bars or the edge of a sturdy chair or bench.\n2. Support your body with arms straight.\n3. Lower your body by bending your elbows.\n4. Push back up to the starting position.\n5. Repeat for desired reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [
      MuscleTarget.triceps,
      MuscleTarget.chest,
      MuscleTarget.shoulders,
    ],
    jointTargets: [JointTarget.elbow, JointTarget.shoulder],
  ),
  Exercise(
    name: 'Pull-ups',
    description: 'Upper body exercise focusing on back and biceps',
    instructions:
        "1. Hang from a bar with hands shoulder-width apart.\n2. Pull your body up until your chin clears the bar.\n3. Lower your body back to the starting position.\n4. Repeat for desired reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [MuscleTarget.lats, MuscleTarget.biceps],
    jointTargets: [JointTarget.shoulder, JointTarget.elbow],
  ),
  Exercise(
    name: 'Glute Bridge',
    description: 'Lower body exercise targeting glutes and hamstrings',
    instructions:
        "1. Lie on your back with knees bent and feet flat on the ground.\n2. Push through your heels to lift your hips towards the ceiling.\n3. Squeeze your glutes at the top of the movement.\n4. Lower your hips back to the starting position.\n5. Repeat for desired reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [MuscleTarget.glutes, MuscleTarget.hamstrings],
    jointTargets: [JointTarget.hip],
  ),
  Exercise(
    name: 'Russian Twists',
    description: 'Core exercise focusing on obliques and rotational strength',
    instructions:
        "1. Sit on the ground with knees bent and feet lifted off the floor.\n2. Lean back slightly and clasp your hands together.\n3. Twist your torso to one side, then the other.\n4. Repeat for desired reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [MuscleTarget.obliques, MuscleTarget.abdominals],
    jointTargets: [JointTarget.spine],
  ),
  Exercise(
    name: 'Superman',
    description: 'Back extension exercise for spinal erectors and glutes',
    instructions:
        "1. Lie face down with arms extended in front of you.\n2. Lift your arms, chest, and legs off the ground.\n3. Hold this position for a few seconds.\n4. Lower back to the starting position.\n5. Repeat for desired reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [MuscleTarget.traps, MuscleTarget.glutes],
    jointTargets: [JointTarget.spine, JointTarget.hip],
  ),
  Exercise(
    name: 'Wall Sit',
    description: 'Isometric leg exercise for endurance and strength',
    instructions:
        "1. Lean against a wall with your back flat against it.\n2. Slide down until your thighs are parallel to the ground.\n3. Hold this position for the desired amount of time.",
    category: ExerciseCategory.strength,
    muscleTargets: [MuscleTarget.quadriceps, MuscleTarget.hamstrings],
    jointTargets: [JointTarget.knee, JointTarget.hip],
  ),
  Exercise(
    name: 'Calf Raises',
    description: 'Lower leg exercise targeting the calf muscles',
    instructions:
        "1. Stand with feet hip-width apart.\n2. Raise your heels off the ground, standing on your toes.\n3. Lower your heels back to the ground.\n4. Repeat for desired reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [MuscleTarget.calves],
    jointTargets: [JointTarget.ankle],
  ),
  Exercise(
    name: 'Tricep Dips',
    description: 'Upper body exercise focusing on triceps',
    instructions:
        "1. Sit on a bench or chair with hands gripping the edge.\n2. Slide your buttocks off the bench, supporting your weight with your arms.\n3. Lower your body by bending your elbows.\n4. Push back up to the starting position.\n5. Repeat for desired reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [MuscleTarget.triceps],
    jointTargets: [JointTarget.elbow],
  ),
  Exercise(
    name: 'Lateral Raises',
    description: 'Shoulder isolation exercise',
    instructions:
        "1. Stand with feet shoulder-width apart, holding light weights at your sides.\n2. Raise your arms out to the sides until they're parallel with the ground.\n3. Lower the weights back to your sides.\n4. Repeat for desired reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [MuscleTarget.shoulders],
    jointTargets: [JointTarget.shoulder],
  ),
  Exercise(
    name: 'Bicycle Crunches',
    description: 'Dynamic core exercise targeting abs and obliques',
    instructions:
        "1. Lie on your back with hands behind your head.\n2. Lift your shoulders off the ground and bring one knee towards your chest.\n3. Twist to bring the opposite elbow towards the knee.\n4. Alternate sides in a pedaling motion.\n5. Repeat for desired reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [MuscleTarget.abdominals, MuscleTarget.obliques],
    jointTargets: [JointTarget.spine, JointTarget.hip],
  ),
  Exercise(
    name: 'Leg Raises',
    description: 'Core exercise focusing on lower abs and hip flexors',
    instructions:
        "1. Lie on your back with legs straight and hands by your sides.\n2. Keeping legs straight, lift them up towards the ceiling.\n3. Slowly lower your legs back down without touching the ground.\n4. Repeat for desired reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [MuscleTarget.abdominals, MuscleTarget.hipFlexors],
    jointTargets: [JointTarget.hip],
  ),
  Exercise(
    name: 'Front and Side Arm Raises',
    description: 'Shoulder exercise targeting deltoids',
    instructions:
        "1. Stand with feet shoulder-width apart, holding light weights.\n2. Raise arms straight in front of you to shoulder height.\n3. Lower arms, then raise them out to the sides to shoulder height.\n4. Lower arms back to starting position.\n5. Repeat for desired reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [MuscleTarget.shoulders],
    jointTargets: [JointTarget.shoulder],
  ),
  Exercise(
    name: 'Plank to Downward Dog',
    description: 'Dynamic core and upper body exercise',
    instructions:
        "1. Start in a plank position.\n2. Push your hips up and back, forming an inverted V shape with your body.\n3. Hold for a moment, then return to plank position.\n4. Repeat for desired reps.",
    category: ExerciseCategory.strength,
    muscleTargets: [
      MuscleTarget.abdominals,
      MuscleTarget.shoulders,
      MuscleTarget.triceps
    ],
    jointTargets: [JointTarget.shoulder, JointTarget.spine],
  ),
];
