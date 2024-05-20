import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

void main() {
  // Initialize the Fluro router
  final FluroRouter router = FluroRouter();

  // Configure the routes for the router
  Routes.configureRoutes(router);

  // Run the Flutter app with FunlandApp as the root widget
  runApp(FunlandApp(router: router));
}

// The main app widget
class FunlandApp extends StatelessWidget {
  final FluroRouter router;

  // Constructor with required router parameter
  const FunlandApp({Key? key, required this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // App title
      title: 'Flutter Funland',
      // App theme
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Generate routes using the router
      onGenerateRoute: router.generator,
      // Set the home screen as the initial screen
      home: const HomeScreen(),
    );
  }
}

// Home screen widget
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with title
      appBar: AppBar(
        title: const Text('Flutter Funland'),
      ),
      // Navigation drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // Drawer header
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            // Home menu item
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // Settings menu item
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
            // Profile menu item
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            // About menu item
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
          ],
        ),
      ),
      // Main body with buttons
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Button for navigating to Animation Alley
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/animation_alley');
              },
              child: const Text('Animation Alley'),
            ),
            // Button for navigating to Avatar Customization
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/avatar_customization');
              },
              child: const Text('Avatar Customization'),
            ),
            // Additional ElevatedButton for Tutorial
            ElevatedButton(
              onPressed: () {
                // Action when Tutorial button is pressed
                Navigator.pushNamed(context, 'tutorial');
                // You can navigate to the tutorial page or perform any other action here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Background Color of the button
                foregroundColor: Colors.white, // Text color of the button
                padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 40.0), // Padding around the button text
                textStyle:
                    TextStyle(fontSize: 18.0), // Text style of the button text
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                ),
              ),
              child: Text('Tutorial'), // Text displayed on the button
            ),
            // Additional ElevatedButton for Programming Challenge
            ElevatedButton(
              onPressed: () {
                // Action when Programming Challenge button is pressed
                // You can navigate to the challenge page or perform any other action here
                Navigator.pushNamed(context, '/programming_challenge');

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Background color of the button
                foregroundColor: Colors.white, // Text color of the button 
                padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 40.0), // Padding around the button text
                textStyle:
                    TextStyle(fontSize: 18.0), // Text style of the button text
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                ),
              ),
              child:
                  Text('Programming Challenge'), // Text displayed on the button
            ),
          ],
        ),
      ),
    );
  }
}

// Routes configuration class
class Routes {
  static void configureRoutes(FluroRouter router) {
    // Define the route for Animation Alley
    router.define('/animation_alley', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const AnimationAlley();
      },
    ));
    // Define the route for Avatar Customization
    router.define('/avatar_customization', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const AvatarCustomizationScreen();
      },
    ));
    // Define the route for Settings
    router.define('/settings', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const SettingsScreen();
      },
    ));
    // Define the route for Profile
    router.define('/profile', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const ProfileScreen();
      },
    ));
    // Define the route for About
    router.define('/about', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const AboutScreen();
      },
    ));
    // Define the route for Avatar Customization
    router.define('/tutorial', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const TutorialWidget();
      },
    ));
     // Define the route for Programming Challenge
    router.define('/programming_challenge', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return ProgrammingChallengeWidget(
          challengeDescription: 'Create a Flutter app with two screens and navigate between them.',
          onCodeSubmit: () {
            // Handle code submission
          },
        );
      },
    ));
  }
}

// Animation Alley screen widget
class AnimationAlley extends StatelessWidget {
  const AnimationAlley({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with title
      appBar: AppBar(
        title: const Text('Animation Alley'),
      ),
      // Main body with animation list
      body: ListView(
        children: <Widget>[
          // Animation 1
          ListTile(
            title: const Text('Animation 1'),
            onTap: () {
              // Navigate to details page for Animation 1
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        AnimationDetails(animationName: 'Animation 1')),
              );
            },
          ),
          // Animation 2
          ListTile(
            title: const Text('Animation 2'),
            onTap: () {
              // Navigate to details page for Animation 2
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        AnimationDetails(animationName: 'Animation 2')),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Animation details screen widget
class AnimationDetails extends StatelessWidget {
  final String animationName;

  const AnimationDetails({Key? key, required this.animationName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with animation name
      appBar: AppBar(
        title: Text(animationName),
      ),
      // Main body with animation details
      body: Center(
        child: Text(
          'Details for $animationName',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

// Avatar Customization screen widget
class AvatarCustomizationScreen extends StatelessWidget {
  const AvatarCustomizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with title
      appBar: AppBar(
        title: const Text('Avatar Customization'),
      ),
      // Main body with customization options
      body: ListView(
        children: <Widget>[
          // Option 1: Change Avatar Color
          ListTile(
            title: const Text('Change Avatar Color'),
            onTap: () {
              // Navigate to Avatar Color customization screen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AvatarColorCustomization()),
              );
            },
          ),
          // Option 2: Change Avatar Style
          ListTile(
            title: const Text('Change Avatar Style'),
            onTap: () {
              // Navigate to Avatar Style customization screen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AvatarStyleCustomization()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Avatar Color customization screen widget
class AvatarColorCustomization extends StatelessWidget {
  const AvatarColorCustomization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with title
      appBar: AppBar(
        title: const Text('Change Avatar Color'),
      ),
      // Main body with color selection options
      body: Center(
        child: Text(
          'Select Avatar Color',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

// Avatar Style customization screen widget
class AvatarStyleCustomization extends StatelessWidget {
  const AvatarStyleCustomization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with title
      appBar: AppBar(
        title: const Text('Change Avatar Style'),
      ),
      // Main body with style selection options
      body: Center(
        child: Text(
          'Select Avatar Style',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

// Settings screen widget
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with title
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      // Main body with settings message
      body: const Center(
        child: Text(
          'Settings Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

// Profile screen widget
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with title
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      // Main body with profile message
      body: const Center(
        child: Text(
          'Profile Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

// About screen widget
class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with title
      appBar: AppBar(
        title: const Text('About'),
      ),
      // Main body with about message
      body: const Center(
        child: Text(
          'About this App',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

// Tutorial component
class TutorialWidget extends StatelessWidget {
  const TutorialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome to Flutter Funland!',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text(
            'Let\'s learn how to write Flutter code!',
            style: TextStyle(fontSize: 18.0),
          ),
          // Additional tutorial content can be added here
        ],
      ),
    );
  }
}

// Programming challenge component
class ProgrammingChallengeWidget extends StatelessWidget {
  final String challengeDescription;
  final Function onCodeSubmit;

  const ProgrammingChallengeWidget({
    Key? key,
    required this.challengeDescription,
    required this.onCodeSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programming Challenge'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Challenge:',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Text(
              challengeDescription,
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Your Code:',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Write your Dart code here',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Call the function to submit code
                onCodeSubmit();
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}