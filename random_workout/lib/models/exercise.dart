class Exercise {
  final String name;
  final String description;
  final String? instructions;

  Exercise({required this.name, required this.description, this.instructions});
}

final List<Exercise> allExercises = [
  Exercise(name: 'Push-ups', description: 'Classic upper body exercise'),
  Exercise(name: 'Squats', description: 'Lower body strength builder'),
  Exercise(name: 'Lunges', description: 'Leg and core workout'),
  Exercise(name: 'Plank', description: 'Core stability exercise'),
  Exercise(name: 'Burpees', description: 'Full body cardio workout'),
  Exercise(name: 'Mountain Climbers', description: 'Cardio and core exercise'),
  Exercise(name: 'Jumping Jacks', description: 'Full body cardio'),
  Exercise(name: 'Sit-ups', description: 'Core strengthening exercise'),
  Exercise(name: 'Bicycle Crunches', description: 'Targets abs and obliques'),
  Exercise(name: 'Russian Twists', description: 'Rotational core exercise'),
  Exercise(name: 'Leg Raises', description: 'Lower abs workout'),
  Exercise(name: 'Diamond Push-ups', description: 'Targets triceps and chest'),
  Exercise(name: 'Dips', description: 'Upper body strength exercise'),
  Exercise(name: 'Wall Sits', description: 'Isometric leg exercise'),
  Exercise(name: 'Calf Raises', description: 'Lower leg strengthening'),
  Exercise(name: 'High Knees', description: 'Cardio and leg exercise'),
  Exercise(name: 'Butt Kicks', description: 'Cardio and hamstring exercise'),
  Exercise(name: 'Jump Squats', description: 'Explosive lower body workout'),
  Exercise(
      name: 'Inchworms', description: 'Full body flexibility and strength'),
  Exercise(
      name: 'Bear Crawls', description: 'Full body coordination and strength'),
  Exercise(name: 'Superman', description: 'Lower back and core exercise'),
  Exercise(name: 'Bird Dogs', description: 'Core stabilization and balance'),
  Exercise(name: 'Glute Bridges', description: 'Targets glutes and lower back'),
  Exercise(
      name: 'Tricep Dips',
      description: 'Targets triceps using a chair or bench'),
  Exercise(
      name: 'Pike Push-ups', description: 'Shoulder and upper body strength'),
  Exercise(
      name: 'Lateral Lunges', description: 'Targets inner and outer thighs'),
  Exercise(name: 'Donkey Kicks', description: 'Glute and lower back exercise'),
];
