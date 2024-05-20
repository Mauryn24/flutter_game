import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

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
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Funland'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/animation_alley');
              },
              child: const Text('Animation Alley'),
            ),
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

class Routes {
  static void configureRoutes(FluroRouter router) {
    router.define('/animation_alley', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const AnimationAlley();
      },
    ));
    router.define('/avatar_customization', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const AvatarCustomizationScreen();
      },
    ));
  }
}

class AnimationAlley extends StatelessWidget {
  const AnimationAlley({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Alley'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Animation Alley!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class AvatarCustomizationScreen extends StatelessWidget {
  const AvatarCustomizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Customization'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Avatar Customization!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
