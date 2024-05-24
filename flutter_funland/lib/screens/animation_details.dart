import 'package:flutter/material.dart';

class AnimationDetails extends StatelessWidget {
  final String animationName;

  const AnimationDetails({Key? key, required this.animationName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animationName),
      ),
      body: Center(
        child: Text(
          'Details for $animationName',
          style: const TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
