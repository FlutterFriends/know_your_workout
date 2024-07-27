import '../models/exercise.dart';

final List<Exercise> stretchingExercises = [
  Exercise(
    name: 'Standing Hamstring Stretch',
    description: 'Stretches the back of the thighs',
    instructions:
        "1. Stand tall and step one foot forward.\n2. Keeping both legs straight, bend at the hips and lower your upper body towards your front leg.\n3. Reach for your toes or ankles.\n4. Hold for 20-30 seconds, then switch legs.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.legs],
    muscleTargets: [MuscleTarget.hamstrings],
    jointTargets: [JointTarget.knee, JointTarget.hip],
  ),
  Exercise(
    name: 'Butterfly Stretch',
    description: 'Stretches the inner thighs and groin',
    instructions:
        "1. Sit on the floor with the soles of your feet together.\n2. Allow your knees to fall out to the sides.\n3. Gently press down on your knees with your elbows.\n4. Hold for 20-30 seconds.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.thighs],
    muscleTargets: [MuscleTarget.adductors],
    jointTargets: [JointTarget.hip],
  ),
  Exercise(
    name: 'Triceps Stretch',
    description: 'Stretches the back of the upper arms',
    instructions:
        "1. Raise one arm overhead and bend it at the elbow.\n2. Use your other hand to gently pull the elbow behind your head.\n3. Hold for 20-30 seconds, then switch arms.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.arms],
    muscleTargets: [MuscleTarget.triceps],
    jointTargets: [JointTarget.elbow],
  ),
  Exercise(
    name: 'Seated Forward Bend',
    description: 'Stretches the hamstrings and lower back',
    instructions:
        "1. Sit on the floor with legs extended in front of you.\n2. Reach forward with your hands towards your toes.\n3. Keep your back straight and bend from the hips.\n4. Hold for 20-30 seconds.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.legs],
    muscleTargets: [MuscleTarget.hamstrings],
    jointTargets: [JointTarget.knee, JointTarget.hip],
  ),
  Exercise(
    name: 'Chest and Shoulder Stretch',
    description: 'Stretches the chest and front of the shoulders',
    instructions:
        "1. Stand in a doorway with your arms on the doorframe at shoulder height.\n2. Lean forward through the doorway until you feel a stretch.\n3. Hold for 20-30 seconds.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.upperBody],
    muscleTargets: [MuscleTarget.chest, MuscleTarget.shoulders],
    jointTargets: [JointTarget.shoulder],
  ),
  Exercise(
    name: 'Quadriceps Stretch',
    description: 'Stretches the front of the thighs',
    instructions:
        "1. Stand on one leg, bend the other leg and grab your foot behind you.\n2. Pull your heel towards your buttocks.\n3. Hold for 20-30 seconds, then switch legs.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.thighs],
    muscleTargets: [MuscleTarget.quadriceps],
    jointTargets: [JointTarget.knee, JointTarget.hip],
  ),
  Exercise(
    name: 'Calf Stretch',
    description: 'Stretches the back of the lower legs',
    instructions:
        "1. Stand facing a wall with one foot behind you.\n2. Keep your back leg straight and press your heel into the ground.\n3. Lean forward until you feel a stretch in your calf.\n4. Hold for 20-30 seconds, then switch legs.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.calves],
    muscleTargets: [MuscleTarget.calves],
    jointTargets: [JointTarget.ankle],
  ),
  Exercise(
    name: 'Hip Flexor Stretch',
    description: 'Stretches the front of the hips',
    instructions:
        "1. Kneel on one knee with the other foot in front of you.\n2. Push your hips forward while keeping your back straight.\n3. Hold for 20-30 seconds, then switch legs.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.hips],
    muscleTargets: [MuscleTarget.hipFlexors],
    jointTargets: [JointTarget.hip],
  ),
  Exercise(
    name: 'Piriformis Stretch',
    description: 'Stretches the deep hip rotator muscles',
    instructions:
        "1. Lie on your back with knees bent.\n2. Cross one ankle over the opposite knee.\n3. Pull the uncrossed leg towards your chest.\n4. Hold for 20-30 seconds, then switch legs.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.glutes],
    muscleTargets: [MuscleTarget.piriformis],
  ),
  Exercise(
    name: 'Lower Back Twist',
    description: 'Stretches the lower back and obliques',
    instructions:
        "1. Lie on your back with knees bent.\n2. Keep your shoulders flat on the ground and let your knees fall to one side.\n3. Turn your head in the opposite direction.\n4. Hold for 20-30 seconds, then switch sides.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.lowerBack],
    muscleTargets: [MuscleTarget.lowerBack, MuscleTarget.obliques],
    jointTargets: [JointTarget.spine],
  ),
  Exercise(
    name: "Child's Pose",
    description: 'Stretches the back, hips, and arms',
    instructions:
        "1. Kneel on the floor with toes together and knees apart.\n2. Sit back on your heels and stretch your arms forward.\n3. Rest your forehead on the ground.\n4. Hold for 30-60 seconds.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.lowerBack, FocusArea.hips, FocusArea.arms],
    muscleTargets: [MuscleTarget.lowerBack, MuscleTarget.hipFlexors],
    jointTargets: [JointTarget.knee, JointTarget.hip],
  ),
  Exercise(
    name: 'Standing Quad Stretch',
    description: 'Stretches the front of the thighs while standing',
    instructions:
        "1. Stand on one leg, bend the other leg and grab your foot behind you.\n2. Pull your heel towards your buttocks.\n3. Hold for 20-30 seconds, then switch legs.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.thighs],
    muscleTargets: [MuscleTarget.quadriceps],
    jointTargets: [JointTarget.knee, JointTarget.hip],
  ),
  Exercise(
    name: 'Figure Four Stretch',
    description: 'Stretches the glutes and outer hips',
    instructions:
        "1. Lie on your back with knees bent.\n2. Cross one ankle over the opposite knee.\n3. Lift the uncrossed leg off the ground and pull it towards your chest.\n4. Hold for 20-30 seconds, then switch legs.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.glutes, FocusArea.hips],
    muscleTargets: [MuscleTarget.glutes],
    jointTargets: [JointTarget.hip],
  ),
  Exercise(
    name: 'Cobra Stretch',
    description: 'Stretches the abdominals and chest',
    instructions:
        "1. Lie face down with hands under your shoulders.\n2. Push your chest up while keeping your hips on the ground.\n3. Hold for 15-30 seconds.",
    category: ExerciseCategory.stretching,
  ),
  Exercise(
    name: 'Seated Spinal Twist',
    description: 'Stretches the back and improves spinal mobility',
    instructions:
        "1. Sit with legs extended.\n2. Bend one knee and place the foot outside of the opposite thigh.\n3. Twist your torso towards the bent knee.\n4. Hold for 20-30 seconds, then switch sides.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.lowerBack],
    muscleTargets: [MuscleTarget.lowerBack],
    jointTargets: [JointTarget.spine],
  ),
  Exercise(
    name: 'Neck Stretch',
    description: 'Stretches the muscles of the neck and upper trapezius',
    instructions:
        "1. Gently tilt your head to one side, bringing your ear towards your shoulder.\n2. Hold for 15-20 seconds, then switch sides.\n3. Repeat with chin tucked towards chest.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.neck],
    muscleTargets: [MuscleTarget.neck],
    jointTargets: [JointTarget.cervicalSpine],
  ),
  Exercise(
    name: 'Wrist and Forearm Stretch',
    description: 'Stretches the muscles of the forearms and wrists',
    instructions:
        "1. Extend one arm in front of you with the palm facing up.\n2. Use your other hand to gently pull the fingers back towards your body.\n3. Hold for 15-20 seconds, then switch hands.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.forearms],
    muscleTargets: [MuscleTarget.forearms],
    jointTargets: [JointTarget.wrist],
  ),
  Exercise(
    name: 'Standing Side Bend',
    description: 'Stretches the obliques and intercostal muscles',
    instructions:
        "1. Stand with feet hip-width apart.\n2. Raise one arm overhead and lean to the opposite side.\n3. Feel the stretch along your side.\n4. Hold for 15-20 seconds, then switch sides.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.core],
    muscleTargets: [MuscleTarget.obliques],
    jointTargets: [JointTarget.spine],
  ),
  Exercise(
    name: 'Lying Glute Stretch',
    description: 'Stretches the glutes while lying on the back',
    instructions:
        "1. Lie on your back with knees bent.\n2. Cross one ankle over the opposite knee.\n3. Grasp behind the uncrossed thigh and pull it towards your chest.\n4. Hold for 20-30 seconds, then switch legs.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.glutes],
    muscleTargets: [MuscleTarget.glutes],
    jointTargets: [JointTarget.hip],
  ),
  Exercise(
    name: 'Downward Facing Dog',
    description:
        'Full body stretch, particularly for shoulders, hamstrings, and calves',
    instructions:
        "1. Start on hands and knees.\n2. Lift your hips up and back, straightening your arms and legs.\n3. Press your heels towards the ground.\n4. Hold for 30-60 seconds, pedaling your feet if desired.",
    category: ExerciseCategory.stretching,
    focusAreas: [FocusArea.arms, FocusArea.legs],
    muscleTargets: [MuscleTarget.hamstrings, MuscleTarget.calves],
    jointTargets: [JointTarget.ankle, JointTarget.shoulder],
  ),
];
