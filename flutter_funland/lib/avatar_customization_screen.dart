import 'package:flutter/material.dart';

class AvatarCustomizationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Customization'),
      ),
      body: Center(
        child: Text(
          'Customize your avatar here!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
