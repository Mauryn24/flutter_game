import 'package:flutter/material.dart';
import './avatar_color_customization.dart';

class AvatarCustomizationScreen extends StatelessWidget {
  const AvatarCustomizationScreen({super.key}); // Use super parameter for key

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
                    builder: (context) => const AvatarColorCustomizationScreen()),
              );
            },
          ),
          ListTile(
            title: const Text('Change Avatar Style'),
            onTap: () {
              // Navigate to Avatar Style customization screen
            },
          ),
        ],
      ),
    );
  }
}

class AvatarColorCustomizationScreen extends StatefulWidget {
  const AvatarColorCustomizationScreen({super.key}); // Use super parameter for key

  @override
  _AvatarColorCustomizationScreenState createState() => _AvatarColorCustomizationScreenState();
}

class _AvatarColorCustomizationScreenState extends State<AvatarColorCustomizationScreen> {
  Color _currentColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Avatar Color'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundColor: _currentColor,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => _selectColor(Colors.red),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // Use backgroundColor instead of primary
              foregroundColor: Colors.white, // Use foregroundColor instead of onPrimary
            ),
            child: const Text('Red'),
          ),
          ElevatedButton(
            onPressed: () => _selectColor(Colors.green),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // Use backgroundColor instead of primary
              foregroundColor: Colors.white, // Use foregroundColor instead of onPrimary
            ),
            child: const Text('Green'),
          ),
          ElevatedButton(
            onPressed: () => _selectColor(Colors.blue),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Use backgroundColor instead of primary
              foregroundColor: Colors.white, // Use foregroundColor instead of onPrimary
            ),
            child: const Text('Blue'),
          ),
        ],
      ),
    );
  }

  void _selectColor(Color color) {
    setState(() {
      _currentColor = color;
    });
  }
}
