import 'package:flutter/material.dart';
import 'funland_game.dart';
import 'widget_workshop.dart';
import 'animation_alley.dart';

class FunlandApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Funland',
      theme: ThemeData(
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green), // Set accent color to green
        ),
      initialRoute: '/',
      routes: {
        '/': (context) => FunlandGame(),
        '/widget_workshop': (context) => WidgetWorkshop(),
        '/animation_alley': (context) => AnimationAlley(),
      },
    );
  }
}



void main() {
  runApp(FunlandApp());
}
