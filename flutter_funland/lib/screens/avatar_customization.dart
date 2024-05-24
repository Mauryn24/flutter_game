import 'package:flutter/material.dart';
import 'package:flutter_funland/screens/avatar_color_customization.dart';
import 'package:flutter_funland/screens/avatar_style_customization.dart';

class AvatarCustomizationScreen extends StatelessWidget {
  const AvatarCustomizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Customization'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Change Avatar Color'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AvatarColorCustomization()),
              );
            },
          ),
          ListTile(
            title: const Text('Change Avatar Style'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AvatarStyleCustomization()),
              );
            },
          ),
        ],
      ),
    );
  }
}
