import 'package:flutter/material.dart';

class video extends StatelessWidget {
  const video({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Video',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
      ),
    )
);
  }
}