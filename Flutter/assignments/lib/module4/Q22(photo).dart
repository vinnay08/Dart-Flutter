import 'package:flutter/material.dart';

class photo extends StatelessWidget {
  const photo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          'https://i.pinimg.com/736x/1e/26/87/1e26874caab099fc978107fb8a64c3f1--this-old-man-mughal-empire.jpg',
          width: 300,
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}