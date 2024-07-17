enum ExerciseCategory { stretching, strength, mobility }

class Exercise {
  final String name;
  final String description;
  final String? instructions;
  final ExerciseCategory category;

  Exercise(
      {required this.name,
      required this.description,
      this.instructions,
      required this.category});
}
