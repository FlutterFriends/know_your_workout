import '../models/exercise.dart';

final List<ExerciseModel> mobilityExercises = [
  ExerciseModel(
    name: 'Arm Circles',
    description: 'Improves shoulder mobility and warms up the upper body',
    instructions:
        "1. Stand with feet shoulder-width apart.\n2. Extend arms out to the sides.\n3. Make small circles with your arms, gradually increasing the size.\n4. Reverse direction after 30 seconds.\n5. Repeat for desired duration.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.shoulders],
    jointTargets: [JointTarget.shoulder],
    version: 1,
  ),
  ExerciseModel(
    name: 'Hip Circles',
    description: 'Enhances hip joint mobility and loosens the lower back',
    instructions:
        "1. Stand with feet shoulder-width apart.\n2. Place hands on hips.\n3. Rotate hips in a circular motion.\n4. Reverse direction after 30 seconds.\n5. Repeat for desired duration.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.glutes, MuscleTarget.hipFlexors],
    jointTargets: [JointTarget.hip],
    version: 1,
  ),
  ExerciseModel(
    name: 'Ankle Rotations',
    description: 'Increases ankle flexibility and prevents injuries',
    instructions:
        "1. Sit on the floor with one leg extended.\n2. Rotate your ankle in a circular motion.\n3. Reverse direction after 30 seconds.\n4. Repeat with the other ankle.\n5. Perform for desired duration.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.calves],
    jointTargets: [JointTarget.ankle],
    version: 1,
  ),
  ExerciseModel(
    name: 'Neck Rolls',
    description: 'Improves neck mobility and relieves tension',
    instructions:
        "1. Stand with feet shoulder-width apart.\n2. Slowly lower your ear to your shoulder.\n3. Roll your head forward and then to the other shoulder.\n4. Repeat in the opposite direction.\n5. Perform for desired duration.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.traps],
    jointTargets: [JointTarget.neck],
    version: 1,
  ),
  ExerciseModel(
    name: 'Wrist Flexion and Extension',
    description: 'Enhances wrist mobility and prevents carpal tunnel',
    instructions:
        "1. Extend one arm in front of you at shoulder height.\n2. Point fingers down and use the other hand to apply gentle pressure.\n3. Hold for 15-30 seconds.\n4. Point fingers up and apply gentle pressure.\n5. Hold for 15-30 seconds.\n6. Repeat with the other wrist.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.forearms],
    jointTargets: [JointTarget.wrist],
    version: 1,
  ),
  ExerciseModel(
    name: 'Shoulder Shrugs',
    description: 'Releases tension in the upper trapezius and neck',
    instructions:
        "1. Stand with feet shoulder-width apart.\n2. Lift shoulders up towards your ears.\n3. Hold for 2-3 seconds.\n4. Relax and lower shoulders back down.\n5. Repeat for desired reps.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.traps],
    jointTargets: [JointTarget.shoulder],
    version: 1,
  ),
  ExerciseModel(
    name: 'Torso Twists',
    description: 'Improves spinal mobility and core engagement',
    instructions:
        "1. Stand with feet shoulder-width apart.\n2. Extend arms out to the sides.\n3. Twist your torso to one side, keeping hips facing forward.\n4. Return to center and twist to the other side.\n5. Repeat for desired reps.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.abdominals, MuscleTarget.obliques],
    jointTargets: [JointTarget.spine],
    version: 1,
  ),
  ExerciseModel(
    name: 'Cat-Cow',
    description: 'Enhances spinal flexibility and core strength',
    instructions:
        "1. Start on hands and knees in a tabletop position.\n2. Inhale, drop your belly, and lift your gaze (Cow).\n3. Exhale, round your spine, and tuck your chin (Cat).\n4. Repeat for 10-15 cycles.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.abdominals],
    jointTargets: [JointTarget.spine],
    version: 1,
  ),
  ExerciseModel(
    name: 'Thread the Needle',
    description: 'Increases thoracic spine mobility and shoulder flexibility',
    instructions:
        "1. Start on hands and knees.\n2. Slide one arm under your body, reaching to the opposite side.\n3. Rest your shoulder and cheek on the ground.\n4. Hold for 15-30 seconds, then switch sides.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.shoulders],
    jointTargets: [JointTarget.spine, JointTarget.shoulder],
    version: 1,
  ),
  ExerciseModel(
    name: 'Leg Swings',
    description: 'Improves hip mobility and dynamic flexibility',
    instructions:
        "1. Stand next to a wall for support.\n2. Swing one leg forward and back.\n3. Do 10 swings, then swing the same leg side to side 10 times.\n4. Switch legs and repeat.",
    category: ExerciseCategory.mobility,
    muscleTargets: [
      MuscleTarget.hipFlexors,
      MuscleTarget.abductors,
      MuscleTarget.adductors
    ],
    jointTargets: [JointTarget.hip],
    version: 1,
  ),
  ExerciseModel(
    name: 'Shoulder Pass-Throughs',
    description: 'Enhances shoulder flexibility and posture',
    instructions:
        "1. Hold a stick or resistance band with a wide grip.\n2. Keeping arms straight, bring the stick from in front of your body to behind it.\n3. Return to the starting position.\n4. Repeat for 10-15 reps.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.shoulders],
    jointTargets: [JointTarget.shoulder],
    version: 1,
  ),
  ExerciseModel(
    name: "World's Greatest Stretch",
    description: 'Comprehensive stretch improving overall body mobility',
    instructions:
        "1. Start in a lunge position.\n2. Place the hand on the same side as your front leg on the ground.\n3. Twist your upper body and reach your other hand to the sky.\n4. Hold for a few seconds, then return to the lunge.\n5. Repeat 5 times, then switch sides.",
    category: ExerciseCategory.mobility,
    muscleTargets: [
      MuscleTarget.hipFlexors,
      MuscleTarget.quadriceps,
      MuscleTarget.hamstrings
    ],
    jointTargets: [JointTarget.hip, JointTarget.knee, JointTarget.spine],
    version: 1,
  ),
  ExerciseModel(
    name: 'Thoracic Bridge',
    description: 'Increases thoracic spine extension and shoulder mobility',
    instructions:
        "1. Lie on your back with knees bent and feet flat on the floor.\n2. Place your hands on either side of your head, elbows pointing up.\n3. Lift your hips and upper back off the ground, supporting yourself on your feet and hands.\n4. Hold for 15-30 seconds, then lower down.\n5. Repeat 3-5 times.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.shoulders, MuscleTarget.glutes],
    jointTargets: [JointTarget.spine, JointTarget.shoulder],
    version: 1,
  ),
  ExerciseModel(
    name: 'Squat to Stand',
    description: 'Improves hip and ankle mobility for better squats',
    instructions:
        "1. Stand with feet hip-width apart.\n2. Bend down and grasp your toes.\n3. Keeping hands on toes, straighten your legs as much as possible.\n4. Bend knees and lower into a squat, keeping your back straight and chest up.\n5. Stand up and repeat for 10 reps.",
    category: ExerciseCategory.mobility,
    muscleTargets: [
      MuscleTarget.hamstrings,
      MuscleTarget.quadriceps,
      MuscleTarget.glutes
    ],
    jointTargets: [JointTarget.hip, JointTarget.ankle, JointTarget.knee],
    version: 1,
  ),
  ExerciseModel(
    name: 'Scorpion',
    description: 'Enhances spine rotation and hip flexor flexibility',
    instructions:
        "1. Lie face down with arms out to the sides.\n2. Lift one leg and reach it across your body towards the opposite hand.\n3. Return to starting position and repeat with the other leg.\n4. Do 10 reps on each side.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.hipFlexors, MuscleTarget.obliques],
    jointTargets: [JointTarget.spine, JointTarget.hip],
    version: 1,
  ),
  ExerciseModel(
    name: 'Wall Slides',
    description: 'Improves shoulder mobility and scapular stability',
    instructions:
        "1. Stand with your back against a wall, feet shoulder-width apart.\n2. Press your lower back, upper back, and head against the wall.\n3. Raise your arms up the wall in a 'Y' position, then slide them down to your sides.\n4. Repeat for 10-15 reps.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.shoulders],
    jointTargets: [JointTarget.shoulder],
    version: 1,
  ),
  ExerciseModel(
    name: 'Cossack Squat',
    description: 'Increases lateral hip mobility and ankle flexibility',
    instructions:
        "1. Stand with feet wide apart.\n2. Shift weight to one leg and squat down on that side.\n3. Keep the other leg straight.\n4. Return to center and repeat on the other side.\n5. Do 10 reps on each side.",
    category: ExerciseCategory.mobility,
    muscleTargets: [
      MuscleTarget.adductors,
      MuscleTarget.abductors,
      MuscleTarget.quadriceps
    ],
    jointTargets: [JointTarget.hip, JointTarget.knee, JointTarget.ankle],
    version: 1,
  ),
  ExerciseModel(
    name: 'Bird Dog',
    description: 'Enhances core stability and spine neutral position',
    instructions:
        "1. Start on hands and knees.\n2. Extend your right arm forward and left leg back.\n3. Hold for a few seconds, then return to starting position.\n4. Repeat with left arm and right leg.\n5. Do 10 reps on each side.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.abdominals, MuscleTarget.glutes],
    jointTargets: [JointTarget.spine, JointTarget.shoulder, JointTarget.hip],
    version: 1,
  ),
  ExerciseModel(
    name: 'Prone Scorpion',
    description: 'Improves thoracic mobility and hip flexor flexibility',
    instructions:
        "1. Lie face down with arms out to the sides.\n2. Bend one knee and reach it across your body towards the opposite hand.\n3. Return to starting position and repeat with the other leg.\n4. Do 10 reps on each side.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.hipFlexors, MuscleTarget.obliques],
    jointTargets: [JointTarget.spine, JointTarget.hip],
    version: 1,
  ),
  ExerciseModel(
    name: 'Downward Dog to Cobra Flow',
    description:
        'Enhances full-body mobility, especially in the spine and shoulders',
    instructions:
        "1. Start in a downward dog position.\n2. Lower to the ground into a cobra pose, lifting your chest.\n3. Push back up to downward dog.\n4. Repeat this flow for 10 cycles.",
    category: ExerciseCategory.mobility,
    muscleTargets: [
      MuscleTarget.shoulders,
      MuscleTarget.hamstrings,
      MuscleTarget.calves
    ],
    jointTargets: [
      JointTarget.spine,
      JointTarget.shoulder,
      JointTarget.wrist,
      JointTarget.ankle
    ],
    version: 1,
  ),
  ExerciseModel(
    name: 'Elbow Circles',
    description: 'Improves elbow joint mobility and forearm flexibility',
    instructions:
        "1. Stand with arms at your sides.\n2. Bend your elbows to 90 degrees.\n3. Make small circles with your forearms.\n4. Perform 10 circles in each direction.\n5. Repeat with larger circles.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.forearms],
    jointTargets: [JointTarget.elbow],
    version: 1,
  ),
  ExerciseModel(
    name: 'Wrist Flexor Stretch',
    description: 'Enhances wrist flexibility and forearm mobility',
    instructions:
        "1. Extend one arm in front of you, palm facing down.\n2. Use your other hand to gently pull the fingers back towards your body.\n3. Hold for 15-30 seconds.\n4. Repeat with the other hand.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.forearms],
    jointTargets: [JointTarget.wrist],
    version: 1,
  ),
  ExerciseModel(
    name: 'Neck Clock',
    description: 'Improves neck mobility and reduces tension',
    instructions:
        "1. Imagine your head is the center of a clock.\n2. Slowly tilt your head to each number on the clock.\n3. Hold for 2-3 seconds at each position.\n4. Complete one full rotation clockwise, then counterclockwise.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.traps],
    jointTargets: [JointTarget.neck],
    version: 1,
  ),
  ExerciseModel(
    name: 'Elbow-to-Knee Touch',
    description: 'Enhances elbow, shoulder, and spine mobility',
    instructions:
        "1. Stand with feet shoulder-width apart.\n2. Lift your right elbow up and across your body.\n3. Simultaneously raise your left knee to meet your right elbow.\n4. Return to starting position and alternate sides.\n5. Perform 10 reps on each side.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.obliques],
    jointTargets: [JointTarget.elbow, JointTarget.shoulder, JointTarget.spine],
    version: 1,
  ),
  ExerciseModel(
    name: 'Wrist Rotations',
    description: 'Improves wrist mobility and forearm flexibility',
    instructions:
        "1. Extend both arms in front of you.\n2. Make fists with your hands.\n3. Rotate your fists in circles, keeping your arms still.\n4. Perform 10 rotations in each direction.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.forearms],
    jointTargets: [JointTarget.wrist],
    version: 1,
  ),
  ExerciseModel(
    name: 'Elbow Crawl',
    description: 'Enhances elbow and shoulder mobility',
    instructions:
        "1. Start in a plank position.\n2. Keeping your core tight, slowly lower onto your elbows.\n3. Reverse the movement to return to the plank position.\n4. Perform 10 repetitions.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.shoulders, MuscleTarget.triceps],
    jointTargets: [JointTarget.elbow, JointTarget.shoulder],
    version: 1,
  ),
  ExerciseModel(
    name: 'Hand Walks',
    description: 'Improves wrist, elbow, and shoulder mobility',
    instructions:
        "1. Start in a standing position, feet shoulder-width apart.\n2. Bend forward and place your hands on the ground in front of you.\n3. Walk your hands forward until you're in a plank position.\n4. Walk your feet towards your hands.\n5. Repeat for 5-10 cycles.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.shoulders, MuscleTarget.hamstrings],
    jointTargets: [JointTarget.wrist, JointTarget.elbow, JointTarget.shoulder],
    version: 1,
  ),
  ExerciseModel(
    name: 'Neck and Shoulder Release',
    description: 'Relieves tension in the neck and improves shoulder mobility',
    instructions:
        "1. Sit or stand with good posture.\n2. Gently tilt your head to one side, bringing your ear towards your shoulder.\n3. Place the hand of the same side on top of your head, applying gentle pressure.\n4. Hold for 15-30 seconds, then slowly roll your chin down to your chest.\n5. Repeat on the other side.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.traps, MuscleTarget.shoulders],
    jointTargets: [JointTarget.neck, JointTarget.shoulder],
    version: 1,
  ),
];
