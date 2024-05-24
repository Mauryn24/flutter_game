# Flutter Funland

Welcome to Flutter Funland, a delightful and interactive Flutter application. This app features a variety of fun and educational components, including tutorials, animations, avatar customization, and programming challenges. It uses the Fluro package for routing and navigation, and includes an authentication feature on the landing page.

## Table of Contents

- [Flutter Funland](#flutter-funland)
  - [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Project Structure](#project-structure)
    - [Main Files](#main-files)
  - [Authentication](#authentication)
    - [Example: `login_screen.dart`](#example-login_screendart)
    - [Update in `routes.dart`](#update-in-routesdart)
    - [Update in `main.dart`](#update-in-maindart)
  - [Testing](#testing)
  - [Contributing](#contributing)
  - [License](#license)

## Features

- **Home Screen**: Central hub with buttons for various activities.
- **Navigation Drawer**: Quick access to different parts of the app including Home, Settings, Profile, and About.
- **Authentication**: Login page for user authentication.
- **Tutorials**: Interactive guides to learn Flutter.
- **Animation Alley**: A place to explore different animations.
- **Avatar Customization**: Customize your avatar with different colors and styles.
- **Programming Challenges**: Take on coding challenges to improve your skills.

## Installation

To install and run Flutter Funland on your local machine, follow these steps:

1. **Clone the repository**:
    ```sh
    git clone https://github.com/yourusername/flutter_funland.git
    cd flutter_funland
    ```

2. **Install dependencies**:
    ```sh
    flutter pub get
    ```

3. **Run the app**:
    ```sh
    flutter run
    ```

## Usage

- **Home Screen**: Access different parts of the app through buttons after logging in.
- **Drawer Menu**: Navigate to Home, Settings, Profile, and About pages using the navigation drawer.
- **Animations**: Tap on animation items in Animation Alley to view details.
- **Customize Avatar**: Change your avatar’s color and style from the Avatar Customization screen.
- **Programming Challenges**: Attempt challenges and submit your code.

## Project Structure

The project is organized as follows:

```
flutter_funland/
├── lib/
│   ├── main.dart
│   ├── app.dart
│   ├── routes.dart
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── animation_alley.dart
│   │   ├── avatar_customization_screen.dart
│   │   ├── settings_screen.dart
│   │   ├── profile_screen.dart
│   │   ├── about_screen.dart
│   │   ├── tutorial_widget.dart
│   │   ├── programming_challenge_widget.dart
│   │   ├── login_screen.dart  # Authentication screen
│   ├── widgets/
│   │   ├── animation_details.dart
│   │   ├── avatar_color_customization.dart
│   │   ├── avatar_style_customization.dart
├── test/
│   ├── widget_test.dart
├── pubspec.yaml
└── README.md
```

### Main Files

- **main.dart**: Entry point of the application.
- **app.dart**: Contains the main app widget.
- **routes.dart**: Defines routes using Fluro.
- **screens/**: Contains all the screen widgets for different parts of the app.
- **widgets/**: Contains shared widgets used across multiple screens.

## Authentication

The authentication feature is implemented on the landing page to ensure users log in before accessing the app's main content.

### Example: `login_screen.dart`

```dart
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implement login logic
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
```

### Update in `routes.dart`

```dart
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_funland/screens/login_screen.dart';
import 'package:flutter_funland/screens/home_screen.dart';
// ... other imports

class Routes {
  static void configureRoutes(FluroRouter router) {
    router.define('/login', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const LoginScreen();
      },
    ));
    router.define('/home', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const HomeScreen();
      },
    ));
    // ... other route definitions
  }
}
```

### Update in `main.dart`

```dart
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_funland/routes.dart';

void main() {
  final FluroRouter router = FluroRouter();
  Routes.configureRoutes(router);

  runApp(FunlandApp(router: router));
}

class FunlandApp extends StatelessWidget {
  final FluroRouter router;

  const FunlandApp({Key? key, required this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Funland',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: router.generator,
      home: const LoginScreen(), // Set LoginScreen as the initial screen
    );
  }
}
```

## Testing

Widget tests ensure that your UI behaves as expected. To run the widget tests:

```sh
flutter test test/widget_test.dart
```

Example tests in `widget_test.dart` cover:
- HomeScreen button display and navigation.
- Drawer menu navigation.
- Authentication flow.

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch: `git checkout -b feature-name`.
3. Make your changes and commit them: `git commit -m 'Add some feature'`.
4. Push to the branch: `git push origin feature-name`.
5. Open a pull request.

- Please ensure your code adheres to the project's coding standards and includes tests for new functionality.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
