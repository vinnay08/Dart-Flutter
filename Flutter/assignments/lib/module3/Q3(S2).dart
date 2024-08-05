import 'package:flutter/material.dart';

class NumberRangeScreen extends StatelessWidget {
  final int startNumber;
  final int endNumber;

  NumberRangeScreen({required this.startNumber, required this.endNumber});

  @override
  Widget build(BuildContext context) {
    List<int> numbers = [];
    for (int i = startNumber; i <= endNumber; i++) {
      numbers.add(i);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers Between $startNumber and $endNumber'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(numbers[index].toString()),
            );
          },
        ),
      ),
    );
  }
}
