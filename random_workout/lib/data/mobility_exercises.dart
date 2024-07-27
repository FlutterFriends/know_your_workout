import '../models/exercise.dart';

final List<Exercise> mobilityExercises = [
  Exercise(
    name: 'Arm Circles',
    description: 'Improves shoulder mobility and warms up the upper body',
    instructions:
        "1. Stand with feet shoulder-width apart.\n2. Extend arms out to the sides.\n3. Make small circles with your arms, gradually increasing the size.\n4. Reverse direction after 30 seconds.\n5. Repeat for desired duration.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.shoulders, FocusArea.upperBody],
    muscleTargets: [MuscleTarget.shoulders],
    jointTargets: [JointTarget.shoulder],
  ),
  Exercise(
    name: 'Hip Circles',
    description: 'Enhances hip joint mobility and loosens the lower back',
    instructions:
        "1. Stand with feet shoulder-width apart.\n2. Place hands on hips.\n3. Rotate hips in a circular motion.\n4. Reverse direction after 30 seconds.\n5. Repeat for desired duration.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.hips, FocusArea.lowerBack],
    muscleTargets: [MuscleTarget.hips],
    jointTargets: [JointTarget.hip],
  ),
  Exercise(
    name: 'Ankle Rotations',
    description: 'Increases ankle flexibility and prevents injuries',
    instructions:
        "1. Sit on the floor with one leg extended.\n2. Rotate your ankle in a circular motion.\n3. Reverse direction after 30 seconds.\n4. Repeat with the other ankle.\n5. Perform for desired duration.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.ankles],
    muscleTargets: [MuscleTarget.calves],
    jointTargets: [JointTarget.ankle],
  ),
  Exercise(
    name: 'Neck Rolls',
    description: 'Improves neck mobility and relieves tension',
    instructions:
        "1. Stand with feet shoulder-width apart.\n2. Slowly lower your ear to your shoulder.\n3. Roll your head forward and then to the other shoulder.\n4. Repeat in the opposite direction.\n5. Perform for desired duration.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.neck],
    muscleTargets: [MuscleTarget.neck],
    jointTargets: [JointTarget.cervicalSpine],
  ),
  Exercise(
    name: 'Wrist Flexion and Extension',
    description: 'Enhances wrist mobility and prevents carpal tunnel',
    instructions:
        "1. Extend one arm in front of you at shoulder height.\n2. Point fingers down and use the other hand to apply gentle pressure.\n3. Hold for 15-30 seconds.\n4. Point fingers up and apply gentle pressure.\n5. Hold for 15-30 seconds.\n6. Repeat with the other wrist.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.wrists],
    muscleTargets: [MuscleTarget.forearms],
    jointTargets: [JointTarget.wrist],
  ),
  Exercise(
    name: 'Shoulder Shrugs',
    description: 'Releases tension in the upper trapezius and neck',
    instructions:
        "1. Stand with feet shoulder-width apart.\n2. Lift shoulders up towards your ears.\n3. Hold for 2-3 seconds.\n4. Relax and lower shoulders back down.\n5. Repeat for desired reps.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.shoulders],
    muscleTargets: [MuscleTarget.upperBack],
    jointTargets: [JointTarget.shoulder],
  ),
  Exercise(
    name: 'Torso Twists',
    description: 'Improves spinal mobility and core engagement',
    instructions:
        "1. Stand with feet shoulder-width apart.\n2. Extend arms out to the sides.\n3. Twist your torso to one side, keeping hips facing forward.\n4. Return to center and twist to the other side.\n5. Repeat for desired reps.",
    category: ExerciseCategory.mobility,
    muscleTargets: [MuscleTarget.abdominals],
    jointTargets: [JointTarget.spine],
    focusAreas: [FocusArea.core],
  ),
  Exercise(
    name: 'Cat-Cow',
    description: 'Enhances spinal flexibility and core strength',
    instructions:
        "1. Start on hands and knees in a tabletop position.\n2. Inhale, drop your belly, and lift your gaze (Cow).\n3. Exhale, round your spine, and tuck your chin (Cat).\n4. Repeat for 10-15 cycles.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.core],
    muscleTargets: [MuscleTarget.abdominals],
    jointTargets: [JointTarget.spine],
  ),
  Exercise(
    name: 'Thread the Needle',
    description: 'Increases thoracic spine mobility and shoulder flexibility',
    instructions:
        "1. Start on hands and knees.\n2. Slide one arm under your body, reaching to the opposite side.\n3. Rest your shoulder and cheek on the ground.\n4. Hold for 15-30 seconds, then switch sides.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.upperBack],
    muscleTargets: [MuscleTarget.upperBack],
    jointTargets: [JointTarget.thoracicSpine],
  ),
  Exercise(
    name: 'Leg Swings',
    description: 'Improves hip mobility and dynamic flexibility',
    instructions:
        "1. Stand next to a wall for support.\n2. Swing one leg forward and back.\n3. Do 10 swings, then swing the same leg side to side 10 times.\n4. Switch legs and repeat.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.hips],
    muscleTargets: [MuscleTarget.hips],
    jointTargets: [JointTarget.hip],
  ),
  Exercise(
    name: 'Shoulder Pass-Throughs',
    description: 'Enhances shoulder flexibility and posture',
    instructions:
        "1. Hold a stick or resistance band with a wide grip.\n2. Keeping arms straight, bring the stick from in front of your body to behind it.\n3. Return to the starting position.\n4. Repeat for 10-15 reps.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.shoulders],
    muscleTargets: [MuscleTarget.shoulders],
    jointTargets: [JointTarget.shoulder],
  ),
  Exercise(
    name: "World's Greatest Stretch",
    description: 'Comprehensive stretch improving overall body mobility',
    instructions:
        "1. Start in a lunge position.\n2. Place the hand on the same side as your front leg on the ground.\n3. Twist your upper body and reach your other hand to the sky.\n4. Hold for a few seconds, then return to the lunge.\n5. Repeat 5 times, then switch sides.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.hips, FocusArea.thighs],
    muscleTargets: [MuscleTarget.hips, MuscleTarget.quadriceps],
    jointTargets: [JointTarget.hip, JointTarget.knee],
  ),
  Exercise(
    name: 'Thoracic Bridge',
    description: 'Increases thoracic spine extension and shoulder mobility',
    instructions:
        "1. Lie on your back with knees bent and feet flat on the floor.\n2. Place your hands on either side of your head, elbows pointing up.\n3. Lift your hips and upper back off the ground, supporting yourself on your feet and hands.\n4. Hold for 15-30 seconds, then lower down.\n5. Repeat 3-5 times.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.upperBack],
    muscleTargets: [MuscleTarget.upperBack],
    jointTargets: [JointTarget.thoracicSpine],
  ),
  Exercise(
    name: 'Squat to Stand',
    description: 'Improves hip and ankle mobility for better squats',
    instructions:
        "1. Stand with feet hip-width apart.\n2. Bend down and grasp your toes.\n3. Keeping hands on toes, straighten your legs as much as possible.\n4. Bend knees and lower into a squat, keeping your back straight and chest up.\n5. Stand up and repeat for 10 reps.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.hips, FocusArea.ankles],
    muscleTargets: [MuscleTarget.hips],
    jointTargets: [JointTarget.hip, JointTarget.ankle],
  ),
  Exercise(
    name: 'Scorpion',
    description: 'Enhances spine rotation and hip flexor flexibility',
    instructions:
        "1. Lie face down with arms out to the sides.\n2. Lift one leg and reach it across your body towards the opposite hand.\n3. Return to starting position and repeat with the other leg.\n4. Do 10 reps on each side.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.lowerBack],
    muscleTargets: [MuscleTarget.lowerBack],
    jointTargets: [JointTarget.lumbarSpine],
  ),
  Exercise(
    name: 'Wall Slides',
    description: 'Improves shoulder mobility and scapular stability',
    instructions:
        "1. Stand with your back against a wall, feet shoulder-width apart.\n2. Press your lower back, upper back, and head against the wall.\n3. Raise your arms up the wall in a 'Y' position, then slide them down to your sides.\n4. Repeat for 10-15 reps.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.shoulders],
    muscleTargets: [MuscleTarget.shoulders],
    jointTargets: [JointTarget.shoulder],
  ),
  Exercise(
    name: 'Cossack Squat',
    description: 'Increases lateral hip mobility and ankle flexibility',
    instructions:
        "1. Stand with feet wide apart.\n2. Shift weight to one leg and squat down on that side.\n3. Keep the other leg straight.\n4. Return to center and repeat on the other side.\n5. Do 10 reps on each side.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.hips, FocusArea.ankles],
    muscleTargets: [MuscleTarget.hips],
    jointTargets: [JointTarget.hip, JointTarget.knee],
  ),
  Exercise(
    name: 'Bird Dog',
    description: 'Enhances core stability and spine neutral position',
    instructions:
        "1. Start on hands and knees.\n2. Extend your right arm forward and left leg back.\n3. Hold for a few seconds, then return to starting position.\n4. Repeat with left arm and right leg.\n5. Do 10 reps on each side.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.core],
    muscleTargets: [MuscleTarget.abdominals],
    jointTargets: [JointTarget.spine],
  ),
  Exercise(
    name: 'Prone Scorpion',
    description: 'Improves thoracic mobility and hip flexor flexibility',
    instructions:
        "1. Lie face down with arms out to the sides.\n2. Bend one knee and reach it across your body towards the opposite hand.\n3. Return to starting position and repeat with the other leg.\n4. Do 10 reps on each side.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.upperBack],
    muscleTargets: [MuscleTarget.upperBack],
    jointTargets: [JointTarget.thoracicSpine],
  ),
  Exercise(
    name: 'Downward Dog to Cobra Flow',
    description:
        'Enhances full-body mobility, especially in the spine and shoulders',
    instructions:
        "1. Start in a downward dog position.\n2. Lower to the ground into a cobra pose, lifting your chest.\n3. Push back up to downward dog.\n4. Repeat this flow for 10 cycles.",
    category: ExerciseCategory.mobility,
    focusAreas: [FocusArea.core, FocusArea.upperBack],
    muscleTargets: [MuscleTarget.abdominals, MuscleTarget.upperBack],
    jointTargets: [JointTarget.spine, JointTarget.shoulder],
  ),
];
