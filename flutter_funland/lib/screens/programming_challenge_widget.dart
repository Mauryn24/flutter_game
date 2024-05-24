import 'package:flutter/material.dart';

class ProgrammingChallengeWidget extends StatelessWidget {
  final String challengeDescription;
  final Function onCodeSubmit;

  const ProgrammingChallengeWidget({
    Key? key,
    required this.challengeDescription,
    required this.onCodeSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programming Challenge'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Challenge:',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Text(
              challengeDescription,
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Your Code:',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Write your Dart code here',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Call the function to submit code
                onCodeSubmit();
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
