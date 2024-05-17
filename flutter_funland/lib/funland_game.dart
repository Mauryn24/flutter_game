import 'package:flutter/material.dart';

class FunlandGame extends StatefulWidget {
  @override
  _FunlandGameState createState() => _FunlandGameState();
}

class _FunlandGameState extends State<FunlandGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Funland'),
      ),
      body: Center(
        child: Text(
          'Welcome to Flutter Funland!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
