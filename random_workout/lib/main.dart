import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/category_selection_page.dart';
import 'providers/app_state.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppState(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return MaterialApp(
          title: 'Random Workout Generator',
          theme: appState.isDarkMode ? ThemeData.dark() : ThemeData.light(),
          home: const CategorySelectionPage(),
        );
      },
    );
  }
}
