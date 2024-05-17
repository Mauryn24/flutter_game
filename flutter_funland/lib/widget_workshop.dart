import 'package:flutter/material.dart';

class WidgetWorkshop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Workshop'),
      ),
      body: Center(
        child: Text(
          'Learn about Flutter Widgets here!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
