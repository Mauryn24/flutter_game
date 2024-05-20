import 'package:flutter/material.dart';

class ShareAchievementsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share Achievements'),
      ),
      body: Center(
        child: Text(
          'Share your achievements with friends!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
