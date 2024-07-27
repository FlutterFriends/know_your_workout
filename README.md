# Random Workout Generator
    
![GitHub stars](https://img.shields.io/github/stars/FlutterFriends/random_workout_generator)
![GitHub license](https://img.shields.io/github/license/FlutterFriends/random_workout_generator)
![GitHub issues](https://img.shields.io/github/issues/FlutterFriends/random_workout_generator)
![GitHub pull requests](https://img.shields.io/github/issues-pr/FlutterFriends/random_workout_generator)

- [Random Workout Generator](#random-workout-generator)
  - [Overview](#overview)
  - [Purpose](#purpose)
  - [Key Features and Use Cases](#key-features-and-use-cases)
  - [Architecture](#architecture)
    - [Key Features and Use Cases](#key-features-and-use-cases-1)
    - [File Structure](#file-structure)
    - [Detailed File Tree](#detailed-file-tree)
    - [File Purposes](#file-purposes)
    - [Widget Descriptions](#widget-descriptions)
    - [State Management](#state-management)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Running the App](#running-the-app)
  - [Testing](#testing)
    - [Generating mocks](#generating-mocks)
  - [Contributing](#contributing)
    - [Submit feedback and ideas](#submit-feedback-and-ideas)
    - [Contribute code](#contribute-code)
    - [Ideas for Contribution](#ideas-for-contribution)
  - [Community and Support](#community-and-support)
  - [License](#license)

## Overview

Random Workout Generator is a Flutter application designed to help users create diverse and engaging bodyweight workouts. With a library of various exercises, this app randomly generates workouts and allows users to customize their routines.

## Purpose

The main goal of this app is to provide a quick and easy way for users to create varied workouts without equipment. It's perfect for those who want to stay active at home, while traveling, or when they don't have access to a gym. By randomizing workouts, it helps prevent boredom and keeps exercise routines fresh and challenging.

## Key Features and Use Cases

1. **Random Workout Generation**: Users can generate random workouts based on exercise categories (Strength, Mobility, Stretching).
2. **Custom Exercise Creation**: Users can add custom exercises to their workouts.
3. **Exercise Management**: Users can view, add, and remove exercises from their current workout.
4. **Dark Mode**: Users can toggle between light and dark themes for comfortable viewing.
5. **Exercise Details**: Users can view detailed information about each exercise, including muscle and joint targets.

## Architecture

### Key Features and Use Cases

1. **Random Workout Generation**: Users can generate random workouts based on exercise categories (Strength, Mobility, Stretching).
2. **Custom Exercise Creation**: Users can add custom exercises to their workouts.
3. **Exercise Management**: Users can view, add, and remove exercises from their current workout.
4. **Dark Mode**: Users can toggle between light and dark themes for comfortable viewing.
5. **Exercise Details**: Users can view detailed information about each exercise, including muscle and joint targets.

### File Structure

The app follows a feature-based structure, organizing code by functionality rather than type. This approach improves scalability and makes it easier to locate and manage related code.

```
lib/
├── data/
├── models/
├── pages/
├── providers/
├── widgets/
└── main.dart
```

- `data/`: Contains static data and sample exercises.
- `models/`: Defines data structures used throughout the app.
- `pages/`: Contains full-screen UI components (pages/screens).
- `providers/`: Houses state management logic.
- `widgets/`: Stores reusable UI components.
- `main.dart`: The entry point of the application.

### Detailed File Tree

```
lib/
├── data/
│   ├── all_exercises.dart
│   ├── mobility_exercises.dart
│   ├── strength_exercises.dart
│   └── stretching_exercises.dart
├── models/
│   └── exercise.dart
├── pages/
│   ├── category_selection_page.dart
│   └── workout_page.dart
├── providers/
│   └── app_state.dart
├── widgets/
│   └── exercise/
│       ├── add_exercise_options_dialog.dart
│       ├── create_exercise_dialog.dart
│       └── exercise_list_tile.dart
└── main.dart
```

### File Purposes

- `data/*.dart`: Define lists of pre-defined exercises for each category.
- `models/exercise.dart`: Defines the `Exercise` class and related enums.
- `pages/category_selection_page.dart`: UI for selecting workout categories.
- `pages/workout_page.dart`: Main workout view and management UI.
- `providers/app_state.dart`: Manages the global state of the application.
- `widgets/exercise/*.dart`: Reusable widgets for exercise-related UI components.
- `main.dart`: Sets up the app, including theming and initial routing.

### Widget Descriptions

- `add_exercise_options_dialog.dart`: 
  This widget displays a dialog that gives the user two options: to choose from pre-defined exercises or to create a custom exercise. It's typically shown when the user taps the "Add Exercise" button on the workout page. The dialog uses callback functions to handle the user's choice, allowing for flexible implementation in different contexts.

- `create_exercise_dialog.dart`: 
  This widget provides a form dialog for users to create custom exercises. It includes input fields for the exercise name, description, and optional instructions. It also allows users to select muscle targets, joint targets, and special targets for the exercise. The dialog handles input validation and returns the created exercise object to the caller.

- `exercise_list_tile.dart`: 
  This widget represents a single exercise in a list view. It displays the exercise name, description, and target information (muscles, joints, special areas). It also provides options to remove the exercise from the workout and to view more detailed instructions. The widget is designed to be used within a ListView, typically on the workout page.

### State Management

The app uses the Provider package for state management. The `AppState` class in `providers/app_state.dart` is the central state management solution, handling:

- Current workout exercises
- Theme mode (light/dark)
- Workout generation

Provider was chosen for its simplicity and ease of use, making it suitable for small to medium-sized applications. It allows for easy access to the app state throughout the widget tree and supports reactive rebuilds of the UI when the state changes.

## Getting Started

### Prerequisites

- Ensure you have Flutter installed on your machine. If not, follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install).
- An IDE with Flutter support (e.g., Android Studio, VS Code with Flutter extension)

### Running the App

1. Clone this repository:
   ```sh
   git clone https://github.com/FlutterFriends/random_workout_generator.git
   ```

2. Navigate to the project directory:
   ```sh
   cd random_workout_generator
   ```

3. Get the dependencies:
   ```sh
   flutter pub get
   ```

4. Run the app:
   ```sh
   flutter run
   ```

## Testing

To run tests for the app, use the following command:

```sh
flutter test
```

To generate a coverage report, use the following command:

```sh
flutter test --coverage
```

To run integration tests, use the following command:

```sh
flutter drive \
  --driver=test_driver/integration_test.dart \
  --target=integration_test/app_test.dart
```

### Generating mocks

To generate mocks for testing, use the following command:

```sh
dart run build_runner build
```

## Contributing

We welcome contributions from the community! Whether you're fixing bugs, adding new features, or improving documentation, your input is valuable. 

### Submit feedback and ideas

If you have suggestions for new features or improvements, please open an issue in the repository's "Issues" tab. We'd love to hear your thoughts!

### Contribute code

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Ideas for Contribution

- Add categories for exercises (e.g., upper body, lower body, core)
- Implement a search functionality for exercises
- Create preset workouts for different fitness levels
- Add a timer feature for timed workouts
- Implement user accounts to save favorite workouts

## Community and Support

Join our community discussions! If you have questions, ideas, or need support, please don't hesitate to open an issue or start a discussion in the repository's "Discussions" tab.

We're excited to see how you'll help improve the Random Workout Generator!

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
