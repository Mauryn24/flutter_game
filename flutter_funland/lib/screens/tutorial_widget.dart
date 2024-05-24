import 'package:flutter/material.dart';

class TutorialWidget extends StatelessWidget {
  const TutorialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome to Flutter Funland!',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
          const Text(
            'Let\'s learn how to write Flutter code!',
            style: TextStyle(fontSize: 18.0),
          ),
          // Additional tutorial content can be added here
        ],
      ),
    );
  }
}
