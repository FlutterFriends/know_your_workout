import 'package:flutter/material.dart';
import 'pages/category_selection_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = true;

  void toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Workout Generator',
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: CategorySelectionPage(
          isDarkMode: _isDarkMode, toggleTheme: toggleTheme),
    );
  }
}
