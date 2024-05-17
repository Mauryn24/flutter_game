import 'package:flutter/material.dart';

class AnimationAlley extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Alley'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Add animations to your apps here!',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to Widget Workshop
                Navigator.pushNamed(context, '/widget_workshop');
              },
              child: Text('Enter Widget Workshop'),
            ),
          ],
        ),
      ),
    );
  }
}
