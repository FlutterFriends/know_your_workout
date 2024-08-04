import '../models/exercise.dart';

final List<ExerciseModel> stretchingExercises = [
  ExerciseModel(
    name: 'Standing Hamstring Stretch',
    description: 'Stretches the back of the thighs',
    instructions:
        "1. Stand tall and step one foot forward.\n2. Keeping both legs straight, bend at the hips and lower your upper body towards your front leg.\n3. Reach for your toes or ankles.\n4. Hold for 20-30 seconds, then switch legs.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.hamstrings],
    jointTargets: [JointTarget.knee, JointTarget.hip],
    version: 1,
  ),
  ExerciseModel(
    name: 'Butterfly Stretch',
    description: 'Stretches the inner thighs',
    instructions:
        "1. Sit on the floor with the soles of your feet together.\n2. Allow your knees to fall out to the sides.\n3. Gently press down on your knees with your elbows.\n4. Hold for 20-30 seconds.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.adductors],
    jointTargets: [JointTarget.hip],
    version: 1,
  ),
  ExerciseModel(
    name: 'Triceps Stretch',
    description: 'Stretches the back of the upper arms',
    instructions:
        "1. Raise one arm overhead and bend it at the elbow.\n2. Use your other hand to gently pull the elbow behind your head.\n3. Hold for 20-30 seconds, then switch arms.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.triceps],
    jointTargets: [JointTarget.elbow, JointTarget.shoulder],
    version: 1,
  ),
  ExerciseModel(
    name: 'Seated Forward Bend',
    description: 'Stretches the hamstrings and lower back',
    instructions:
        "1. Sit on the floor with legs extended in front of you.\n2. Reach forward with your hands towards your toes.\n3. Keep your back straight and bend from the hips.\n4. Hold for 20-30 seconds.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.hamstrings],
    jointTargets: [JointTarget.hip, JointTarget.spine],
    version: 1,
  ),
  ExerciseModel(
    name: 'Chest and Shoulder Stretch',
    description: 'Stretches the chest and front of the shoulders',
    instructions:
        "1. Stand in a doorway with your arms on the doorframe at shoulder height.\n2. Lean forward through the doorway until you feel a stretch.\n3. Hold for 20-30 seconds.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.chest, MuscleTarget.shoulders],
    jointTargets: [JointTarget.shoulder],
    version: 1,
  ),
  ExerciseModel(
    name: 'Standing Quad Stretch',
    description: 'Stretches the front of the thighs',
    instructions:
        "1. Stand on one leg, bend the other leg and grab your foot behind you.\n2. Pull your heel towards your buttocks.\n3. Hold for 20-30 seconds, then switch legs.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.quadriceps],
    jointTargets: [JointTarget.knee, JointTarget.hip],
    version: 1,
  ),
  ExerciseModel(
    name: 'Calf Stretch',
    description: 'Stretches the back of the lower legs',
    instructions:
        "1. Stand facing a wall with one foot behind you.\n2. Keep your back leg straight and press your heel into the ground.\n3. Lean forward until you feel a stretch in your calf.\n4. Hold for 20-30 seconds, then switch legs.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.calves],
    jointTargets: [JointTarget.ankle],
    version: 1,
  ),
  ExerciseModel(
    name: 'Hip Flexor Stretch',
    description: 'Stretches the front of the hips',
    instructions:
        "1. Kneel on one knee with the other foot in front of you.\n2. Push your hips forward while keeping your back straight.\n3. Hold for 20-30 seconds, then switch legs.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.hipFlexors],
    jointTargets: [JointTarget.hip],
    version: 1,
  ),
  ExerciseModel(
    name: 'Piriformis Stretch',
    description: 'Stretches the deep hip rotator muscles',
    instructions:
        "1. Lie on your back with knees bent.\n2. Cross one ankle over the opposite knee.\n3. Pull the uncrossed leg towards your chest.\n4. Hold for 20-30 seconds, then switch legs.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.glutes],
    jointTargets: [JointTarget.hip],
    version: 1,
  ),
  ExerciseModel(
    name: 'Lower Back Twist',
    description: 'Stretches the lower back and obliques',
    instructions:
        "1. Lie on your back with knees bent.\n2. Keep your shoulders flat on the ground and let your knees fall to one side.\n3. Turn your head in the opposite direction.\n4. Hold for 20-30 seconds, then switch sides.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.obliques],
    jointTargets: [JointTarget.spine],
    version: 1,
  ),
  ExerciseModel(
    name: "Child's Pose",
    description: 'Stretches the back, hips, and shoulders',
    instructions:
        "1. Kneel on the floor with toes together and knees apart.\n2. Sit back on your heels and stretch your arms forward.\n3. Rest your forehead on the ground.\n4. Hold for 30-60 seconds.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.hipFlexors, MuscleTarget.shoulders],
    jointTargets: [JointTarget.hip, JointTarget.spine, JointTarget.shoulder],
    version: 1,
  ),
  ExerciseModel(
    name: 'Figure Four Stretch',
    description: 'Stretches the glutes and outer hips',
    instructions:
        "1. Lie on your back with knees bent.\n2. Cross one ankle over the opposite knee.\n3. Lift the uncrossed leg off the ground and pull it towards your chest.\n4. Hold for 20-30 seconds, then switch legs.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.glutes, MuscleTarget.abductors],
    jointTargets: [JointTarget.hip],
    version: 1,
  ),
  ExerciseModel(
    name: 'Cobra Stretch',
    description: 'Stretches the abdominals and chest',
    instructions:
        "1. Lie face down with hands under your shoulders.\n2. Push your chest up while keeping your hips on the ground.\n3. Hold for 15-30 seconds.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.abdominals, MuscleTarget.chest],
    jointTargets: [JointTarget.spine],
    version: 1,
  ),
  ExerciseModel(
    name: 'Seated Spinal Twist',
    description: 'Stretches the back and improves spinal mobility',
    instructions:
        "1. Sit with legs extended.\n2. Bend one knee and place the foot outside of the opposite thigh.\n3. Twist your torso towards the bent knee.\n4. Hold for 20-30 seconds, then switch sides.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.obliques],
    jointTargets: [JointTarget.spine],
    version: 1,
  ),
  ExerciseModel(
    name: 'Neck Stretch',
    description: 'Stretches the muscles of the neck and upper trapezius',
    instructions:
        "1. Gently tilt your head to one side, bringing your ear towards your shoulder.\n2. Hold for 15-20 seconds, then switch sides.\n3. Repeat with chin tucked towards chest.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.traps],
    jointTargets: [JointTarget.neck],
    version: 1,
  ),
  ExerciseModel(
    name: 'Wrist and Forearm Stretch',
    description: 'Stretches the muscles of the forearms and wrists',
    instructions:
        "1. Extend one arm in front of you with the palm facing up.\n2. Use your other hand to gently pull the fingers back towards your body.\n3. Hold for 15-20 seconds, then switch hands.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.forearms],
    jointTargets: [JointTarget.wrist],
    version: 1,
  ),
  ExerciseModel(
    name: 'Standing Side Bend',
    description: 'Stretches the obliques and lats',
    instructions:
        "1. Stand with feet hip-width apart.\n2. Raise one arm overhead and lean to the opposite side.\n3. Feel the stretch along your side.\n4. Hold for 15-20 seconds, then switch sides.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.obliques, MuscleTarget.lats],
    jointTargets: [JointTarget.spine],
    version: 1,
  ),
  ExerciseModel(
    name: 'Lying Glute Stretch',
    description: 'Stretches the glutes while lying on the back',
    instructions:
        "1. Lie on your back with knees bent.\n2. Cross one ankle over the opposite knee.\n3. Grasp behind the uncrossed thigh and pull it towards your chest.\n4. Hold for 20-30 seconds, then switch legs.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.glutes],
    jointTargets: [JointTarget.hip],
    version: 1,
  ),
  ExerciseModel(
    name: 'Downward Facing Dog',
    description:
        'Full body stretch, particularly for shoulders, hamstrings, and calves',
    instructions:
        "1. Start on hands and knees.\n2. Lift your hips up and back, straightening your arms and legs.\n3. Press your heels towards the ground.\n4. Hold for 30-60 seconds, pedaling your feet if desired.",
    category: ExerciseCategory.stretching,
    muscleTargets: [
      MuscleTarget.hamstrings,
      MuscleTarget.calves,
      MuscleTarget.shoulders
    ],
    jointTargets: [JointTarget.ankle, JointTarget.shoulder, JointTarget.spine],
    version: 1,
  ),
  ExerciseModel(
    name: 'Standing Biceps Stretch',
    description: 'Stretches the biceps and forearms',
    instructions:
        "1. Stand facing a wall, arm's length away.\n2. Place your palm on the wall at shoulder height, fingers pointing down.\n3. Slowly turn your body away from the wall until you feel a stretch.\n4. Hold for 20-30 seconds, then switch arms.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.biceps, MuscleTarget.forearms],
    jointTargets: [JointTarget.elbow, JointTarget.shoulder],
    version: 1,
  ),
  ExerciseModel(
    name: 'Sphinx Pose',
    description: 'Stretches the abdominals and lower back',
    instructions:
        "1. Lie face down with elbows under shoulders, forearms on the ground.\n2. Lift your upper body, keeping lower body relaxed on the floor.\n3. Hold for 15-30 seconds, breathing deeply.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.abdominals],
    jointTargets: [JointTarget.spine],
    version: 1,
  ),
  ExerciseModel(
    name: 'Standing Lat Stretch',
    description: 'Stretches the latissimus dorsi muscles',
    instructions:
        "1. Stand with feet hip-width apart.\n2. Raise your right arm overhead, then bend it at the elbow.\n3. Grasp your right elbow with your left hand.\n4. Gently pull your right elbow behind your head while leaning to the left.\n5. Hold for 20-30 seconds, then switch sides.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.lats],
    jointTargets: [JointTarget.shoulder, JointTarget.spine],
    version: 1,
  ),
  ExerciseModel(
    name: 'Lying Quad Stretch',
    description: 'Stretches the quadriceps while lying down',
    instructions:
        "1. Lie on your right side.\n2. Bend your left knee and grasp your left foot with your left hand.\n3. Gently pull your heel towards your buttocks.\n4. Hold for 20-30 seconds, then switch sides.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.quadriceps],
    jointTargets: [JointTarget.knee, JointTarget.hip],
    version: 1,
  ),
  ExerciseModel(
    name: 'Standing Hip Abductor Stretch',
    description: 'Stretches the hip abductor muscles',
    instructions:
        "1. Stand behind a chair, holding it for balance.\n2. Cross your right leg behind your left leg.\n3. Lean your hips to the right until you feel a stretch on the outside of your left hip.\n4. Hold for 20-30 seconds, then switch sides.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.abductors],
    jointTargets: [JointTarget.hip],
    version: 1,
  ),
  ExerciseModel(
    name: 'Seated Adductor Stretch',
    description: 'Stretches the inner thigh muscles',
    instructions:
        "1. Sit on the floor with your back straight.\n2. Bring the soles of your feet together, allowing your knees to fall out to the sides.\n3. Gently press down on your knees with your elbows.\n4. Lean forward slightly to increase the stretch.\n5. Hold for 20-30 seconds.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.adductors],
    jointTargets: [JointTarget.hip],
    version: 1,
  ),
  ExerciseModel(
    name: 'Wall Chest Stretch',
    description: 'Stretches the chest muscles',
    instructions:
        "1. Stand facing a wall, arm's length away.\n2. Place your right palm on the wall at shoulder height.\n3. Slowly turn your body to the left until you feel a stretch in your chest.\n4. Hold for 20-30 seconds, then switch sides.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.chest],
    jointTargets: [JointTarget.shoulder],
    version: 1,
  ),
  ExerciseModel(
    name: 'Kneeling Hip Flexor Stretch',
    description: 'Stretches the hip flexors and quadriceps',
    instructions:
        "1. Kneel on your right knee, left foot planted in front.\n2. Push your hips forward while keeping your back straight.\n3. Raise your right arm overhead and lean slightly to the left.\n4. Hold for 20-30 seconds, then switch sides.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.hipFlexors, MuscleTarget.quadriceps],
    jointTargets: [JointTarget.hip, JointTarget.knee],
    version: 1,
  ),
  ExerciseModel(
    name: 'Seated Forward Bend with Twist',
    description: 'Stretches the hamstrings, lower back, and obliques',
    instructions:
        "1. Sit with legs extended in front of you.\n2. Bend your right knee, placing your right foot outside your left thigh.\n3. Twist your torso to the right, placing your left elbow outside your right knee.\n4. Hold for 20-30 seconds, then switch sides.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.hamstrings, MuscleTarget.obliques],
    jointTargets: [JointTarget.hip, JointTarget.spine],
    version: 1,
  ),
  ExerciseModel(
    name: 'Neck and Trap Release',
    description: 'Stretches the neck and upper trapezius muscles',
    instructions:
        "1. Sit or stand with a straight back.\n2. Tilt your head to the right, bringing your ear towards your shoulder.\n3. Gently place your right hand on the left side of your head.\n4. Apply light pressure to increase the stretch.\n5. Hold for 15-20 seconds, then switch sides.",
    category: ExerciseCategory.stretching,
    muscleTargets: [MuscleTarget.traps],
    jointTargets: [JointTarget.neck],
    version: 1,
  ),
];
