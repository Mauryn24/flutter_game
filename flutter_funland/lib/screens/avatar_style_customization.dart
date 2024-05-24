import 'package:flutter/material.dart';

class AvatarStyleCustomization extends StatelessWidget {
  const AvatarStyleCustomization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Avatar Style'),
      ),
      body: Center(
        child: const Text(
          'Select Avatar Style',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
