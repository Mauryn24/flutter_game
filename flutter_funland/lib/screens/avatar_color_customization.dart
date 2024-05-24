import 'package:flutter/material.dart';

class AvatarColorCustomization extends StatelessWidget {
  const AvatarColorCustomization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Avatar Color'),
      ),
      body: Center(
        child: const Text(
          'Select Avatar Color',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
