import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_funland/screens/home_screen.dart';
import 'package:flutter_funland/screens/auth_screen.dart';


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
        canvasColor: Colors.amber,
        primarySwatch: Colors.blue,
      ),
      // Generate routes using the router
      onGenerateRoute: router.generator,
      // Set the home screen as the initial screen
      home: const AuthScreen(),
    );
  }
}
