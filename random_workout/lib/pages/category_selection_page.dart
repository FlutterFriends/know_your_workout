import 'package:flutter/material.dart';
import '../models/exercise.dart';
import 'workout_page.dart';

class CategorySelectionPage extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback toggleTheme;

  const CategorySelectionPage({
    Key? key,
    required this.isDarkMode,
    required this.toggleTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Workout Category'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: ExerciseCategory.values.map((category) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WorkoutPage(
                        isDarkMode: isDarkMode,
                        toggleTheme: toggleTheme,
                        category: category,
                      ),
                    ),
                  );
                },
                child: Text(category.name.toUpperCase()),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
