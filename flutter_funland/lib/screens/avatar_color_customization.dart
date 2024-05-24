import 'package:flutter/material.dart';

class AvatarColorCustomizationScreen extends StatelessWidget {
  final Color currentColor;

  AvatarColorCustomizationScreen({required this.currentColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customize Avatar Color'),
      ),
      body: Center(
        child: Wrap(
          spacing: 10,
          children: <Widget>[
            _colorOption(context, Colors.red),
            _colorOption(context, Colors.green),
            _colorOption(context, Colors.blue),
            _colorOption(context, Colors.yellow),
            _colorOption(context, Colors.purple),
          ],
        ),
      ),
    );
  }

  Widget _colorOption(BuildContext context, Color color) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context, color); // Return selected color to previous screen
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: currentColor == color ? Colors.black : Colors.transparent),
        ),
      ),
    );
  }
}
