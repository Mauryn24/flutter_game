import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

// The main function is the entry point of the application.
void main() {
  // Create an instance of FluroRouter.
  final FluroRouter router = FluroRouter();
  
  // Configure routes using the FluroRouter instance.
  Routes.configureRoutes(router);
  
  // Run the Flutter app, passing the configured router to the FunlandApp widget.
  runApp(FunlandApp(router: router));
}

// FunlandApp is the root widget of the application.
class FunlandApp extends StatelessWidget {
  // FluroRouter instance to handle route navigation.
  final FluroRouter router;

  // Constructor for FunlandApp, which accepts a FluroRouter and an optional Key.
  const FunlandApp({Key? key, required this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Title of the application.
      title: 'Flutter Funland',
      
      // Theme of the application.
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      // Configure the app to use FluroRouter for route generation.
      onGenerateRoute: router.generator,
      
      // Set the initial screen of the application to HomeScreen.
      home: const HomeScreen(),
    );
  }
}

// HomeScreen is the main screen of the application.
class HomeScreen extends StatelessWidget {
  // Constructor for HomeScreen, which accepts an optional Key.
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with the title of the screen.
      appBar: AppBar(
        title: const Text('Flutter Funland'),
      ),
      
      // Main body of the screen.
      body: Center(
        child: Column(
          // Center the children vertically.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Button to navigate to AnimationAlley screen.
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/animation_alley');
              },
              child: const Text('Animation Alley'),
            ),
            
            // Button to navigate to AvatarCustomizationScreen.
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/avatar_customization');
              },
              child: const Text('Avatar Customization'),
            ),
          ],
        ),
      ),
    );
  }
}

// Routes class to define and configure routes.
class Routes {
  static void configureRoutes(FluroRouter router) {
    // Define the route for AnimationAlley screen.
    router.define('/animation_alley', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const AnimationAlley();
      },
    ));
    
    // Define the route for AvatarCustomizationScreen.
    router.define('/avatar_customization', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const AvatarCustomizationScreen();
      },
    ));
  }
}

// AnimationAlley screen class.
class AnimationAlley extends StatelessWidget {
  // Constructor for AnimationAlley, which accepts an optional Key.
  const AnimationAlley({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with the title of the screen.
      appBar: AppBar(
        title: const Text('Animation Alley'),
      ),
      
      // Main body of the screen.
      body: const Center(
        child: Text(
          'Welcome to Animation Alley!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

// AvatarCustomizationScreen screen class.
class AvatarCustomizationScreen extends StatelessWidget {
  // Constructor for AvatarCustomizationScreen, which accepts an optional Key.
  const AvatarCustomizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with the title of the screen.
      appBar: AppBar(
        title: const Text('Avatar Customization'),
      ),
      
      // Main body of the screen.
      body: const Center(
        child: Text(
          'Welcome to Avatar Customization!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
