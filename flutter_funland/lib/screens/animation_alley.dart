import 'package:flutter/material.dart';
import 'package:flutter_funland/screens/animation_details.dart';

class AnimationAlley extends StatelessWidget {
  const AnimationAlley({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Alley'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Animation 1'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        AnimationDetails(animationName: 'Animation 1')),
              );
            },
          ),
          ListTile(
            title: const Text('Animation 2'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        AnimationDetails(animationName: 'Animation 2')),
              );
            },
          ),
        ],
      ),
    );
  }
}
