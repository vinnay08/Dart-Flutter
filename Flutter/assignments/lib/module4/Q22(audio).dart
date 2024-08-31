import 'package:flutter/material.dart';

class audio extends StatelessWidget {
  const audio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Text(
          'Audio',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
      ),
      ),
    );
  }
}