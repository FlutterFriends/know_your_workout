import 'package:random_workout/models/exercise.dart';

final List<Exercise> balanceExercises = [
  Exercise(
    name: 'Single Leg Stand',
    description: 'Improves balance and strengthens leg and core muscles',
    instructions:
        "1. Stand on one leg with the other foot lifted off the ground.\n2. Keep your standing leg straight but not locked.\n3. Hold for 30 seconds.\n4. Switch legs and repeat.\n5. For added difficulty, try closing your eyes.",
    category: ExerciseCategory.balance,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.calves,
      MuscleTarget.core
    ],
    jointTargets: [JointTarget.ankle, JointTarget.knee, JointTarget.hip],
    focusAreas: [FocusArea.legs, FocusArea.core],
  ),
  Exercise(
    name: 'Tree Pose',
    description: 'Enhances balance and focus while stretching the inner thighs',
    instructions:
        "1. Stand on one leg.\n2. Place the sole of your other foot on your inner thigh or calf (avoid the knee).\n3. Bring your palms together in front of your chest.\n4. Hold for 30 seconds, then switch sides.",
    category: ExerciseCategory.balance,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.calves,
      MuscleTarget.core
    ],
    jointTargets: [JointTarget.ankle, JointTarget.knee, JointTarget.hip],
    focusAreas: [FocusArea.legs, FocusArea.core],
  ),
  Exercise(
    name: 'Flamingo Stand',
    description: 'Challenges balance and strengthens the standing leg',
    instructions:
        "1. Stand on one leg.\n2. Bend your other leg behind you, grabbing the foot with your hand.\n3. Pull your foot towards your buttocks.\n4. Hold for 15-30 seconds, then switch sides.",
    category: ExerciseCategory.balance,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.hamstrings,
      MuscleTarget.calves,
      MuscleTarget.core
    ],
    jointTargets: [JointTarget.ankle, JointTarget.knee, JointTarget.hip],
    focusAreas: [FocusArea.legs, FocusArea.core],
  ),
  Exercise(
    name: 'Tightrope Walk',
    description: 'Improves balance and coordination',
    instructions:
        "1. Find a straight line on the floor or imagine one.\n2. Walk heel-to-toe along the line.\n3. Keep your arms out to the sides for balance.\n4. Take 10-15 steps forward, then backward.",
    category: ExerciseCategory.balance,
    muscleTargets: [MuscleTarget.calves, MuscleTarget.core],
    jointTargets: [JointTarget.ankle],
    focusAreas: [FocusArea.legs, FocusArea.core],
  ),
  Exercise(
    name: 'Single Leg Deadlift',
    description: 'Enhances balance while strengthening the back and legs',
    instructions:
        "1. Stand on one leg.\n2. Hinge at your hips, extending the other leg behind you.\n3. Lower your upper body until it's parallel to the ground.\n4. Return to the starting position.\n5. Do 10 reps, then switch legs.",
    category: ExerciseCategory.balance,
    muscleTargets: [
      MuscleTarget.hamstrings,
      MuscleTarget.glutes,
      MuscleTarget.core,
      MuscleTarget.back
    ],
    jointTargets: [JointTarget.ankle, JointTarget.knee, JointTarget.hip],
    focusAreas: [FocusArea.legs, FocusArea.core],
  ),
  Exercise(
    name: 'Warrior III Pose',
    description: 'Improves balance, focus, and core strength',
    instructions:
        "1. Start in a standing position.\n2. Shift your weight onto one leg.\n3. Lean forward, lifting your other leg behind you.\n4. Extend your arms forward.\n5. Hold for 30 seconds, then switch sides.",
    category: ExerciseCategory.balance,
    muscleTargets: [
      MuscleTarget.core,
      MuscleTarget.glutes,
      MuscleTarget.hamstrings
    ],
    jointTargets: [JointTarget.ankle, JointTarget.knee, JointTarget.hip],
    focusAreas: [FocusArea.legs, FocusArea.core],
  ),
  Exercise(
    name: 'Standing Leg Swings',
    description: 'Improves dynamic balance and hip mobility',
    instructions:
        "1. Stand on one leg.\n2. Swing the other leg forward and back.\n3. Keep your upper body stable.\n4. Do 15 swings, then switch legs.\n5. Repeat with side-to-side swings.",
    category: ExerciseCategory.balance,
    muscleTargets: [MuscleTarget.core],
    jointTargets: [JointTarget.hip, JointTarget.ankle],
    focusAreas: [FocusArea.legs, FocusArea.core],
  ),
  Exercise(
    name: 'Pillow Balance',
    description: 'Improves balance on an unstable surface',
    instructions:
        "1. Place a pillow on the floor.\n2. Stand on the pillow with both feet.\n3. Try to maintain your balance for 30 seconds.\n4. For a challenge, try standing on one foot.",
    category: ExerciseCategory.balance,
    muscleTargets: [
      MuscleTarget.calves,
      MuscleTarget.quadriceps,
      MuscleTarget.core
    ],
    jointTargets: [JointTarget.ankle, JointTarget.knee],
    focusAreas: [FocusArea.legs, FocusArea.core],
  ),
  Exercise(
    name: 'Clock Reach',
    description:
        'Enhances balance while improving leg strength and flexibility',
    instructions:
        "1. Imagine you're standing in the center of a clock.\n2. Balance on your right leg.\n3. Reach your left leg to 12 o'clock, then back to center.\n4. Reach to 3 o'clock, then 6 o'clock.\n5. Switch legs and repeat.",
    category: ExerciseCategory.balance,
    muscleTargets: [
      MuscleTarget.quadriceps,
      MuscleTarget.hamstrings,
      MuscleTarget.calves,
      MuscleTarget.core
    ],
    jointTargets: [JointTarget.ankle, JointTarget.knee, JointTarget.hip],
    focusAreas: [FocusArea.legs, FocusArea.core],
  ),
  Exercise(
    name: 'Single Leg Balance with Arm Movements',
    description: 'Challenges balance while performing upper body movements',
    instructions:
        "1. Stand on one leg.\n2. Perform arm circles, punches, or reaches while maintaining balance.\n3. Continue for 30 seconds.\n4. Switch legs and repeat.",
    category: ExerciseCategory.balance,
    muscleTargets: [
      MuscleTarget.core,
      MuscleTarget.shoulders,
      MuscleTarget.quadriceps
    ],
    jointTargets: [JointTarget.ankle, JointTarget.knee, JointTarget.shoulder],
    focusAreas: [FocusArea.legs, FocusArea.core],
  ),
  Exercise(
    name: 'Heel-to-Toe Balance Walk',
    description: 'Improves balance and coordination',
    instructions:
        "1. Stand with your heel touching the toe of your back foot.\n2. Take a step forward, placing your back foot's heel against the front foot's toe.\n3. Continue for 10-15 steps.\n4. Turn around and return to the start.",
    category: ExerciseCategory.balance,
    muscleTargets: [MuscleTarget.calves, MuscleTarget.core],
    jointTargets: [JointTarget.ankle],
    focusAreas: [FocusArea.legs, FocusArea.core],
  ),
  Exercise(
    name: 'Standing Windmill',
    description: 'Enhances balance while improving flexibility',
    instructions:
        "1. Stand with feet wider than shoulder-width.\n2. Extend arms out to the sides.\n3. Bend to touch your right hand to your left foot.\n4. Return to standing.\n5. Alternate sides for 10 reps each.",
    category: ExerciseCategory.balance,
    muscleTargets: [
      MuscleTarget.core,
      MuscleTarget.hamstrings,
      MuscleTarget.obliques
    ],
    jointTargets: [JointTarget.hip, JointTarget.spine],
    focusAreas: [FocusArea.core],
  ),
  Exercise(
    name: 'Single Leg Romanian Deadlift',
    description: 'Improves balance and strengthens the posterior chain',
    instructions:
        "1. Stand on one leg.\n2. Hinge at the hips, lowering your torso while raising your other leg behind you.\n3. Keep your back straight and reach towards the ground.\n4. Return to standing.\n5. Do 10 reps, then switch legs.",
    category: ExerciseCategory.balance,
    muscleTargets: [
      MuscleTarget.hamstrings,
      MuscleTarget.glutes,
      MuscleTarget.core,
      MuscleTarget.back
    ],
    jointTargets: [JointTarget.hip, JointTarget.knee, JointTarget.ankle],
    focusAreas: [FocusArea.legs, FocusArea.core],
  ),
  Exercise(
    name: 'Tandem Balance',
    description: 'Challenges balance by narrowing the base of support',
    instructions:
        "1. Stand with one foot directly in front of the other, heel touching toe.\n2. Maintain this position for 30 seconds.\n3. Switch feet and repeat.",
    category: ExerciseCategory.balance,
    muscleTargets: [
      MuscleTarget.calves,
      MuscleTarget.quadriceps,
      MuscleTarget.core
    ],
    jointTargets: [JointTarget.ankle, JointTarget.knee],
    focusAreas: [FocusArea.legs, FocusArea.core],
  ),
];
