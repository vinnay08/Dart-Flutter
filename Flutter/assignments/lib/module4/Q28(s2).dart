import 'package:flutter/material.dart';

class sumscreen extends StatelessWidget {
  final int sum;

  sumscreen({required this.sum});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sum of Two Numbers'),
      ),
      body: Center(
        child: Text(
          'Sum : $sum',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
