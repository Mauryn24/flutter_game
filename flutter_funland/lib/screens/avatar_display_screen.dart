import 'package:flutter/material.dart';
import './avatar_color_customization.dart';

class AvatarDisplayScreen extends StatefulWidget {
  @override
  _AvatarDisplayScreenState createState() => _AvatarDisplayScreenState();
}

class _AvatarDisplayScreenState extends State<AvatarDisplayScreen> {
  Color _avatarColor = Colors.blue; // Default avatar color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Display'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundColor: _avatarColor,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final selectedColor = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AvatarColorCustomizationScreen(currentColor: _avatarColor)),
                );
                if (selectedColor != null) {
                  setState(() {
                    _avatarColor = selectedColor;
                  });
                }
              },
              child: Text('Customize Avatar Color'),
            ),
          ],
        ),
      ),
    );
  }
}
