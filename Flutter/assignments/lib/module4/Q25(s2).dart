import 'package:flutter/material.dart';

class s1 extends StatelessWidget {
  const s1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              'After 3 seconds, this screen will be replaced by Home Screen'),
        ),
      ),
    );
  }
}
