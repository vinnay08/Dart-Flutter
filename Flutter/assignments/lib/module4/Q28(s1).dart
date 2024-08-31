import 'package:assignments/module4/Q28(s2).dart';
import 'package:flutter/material.dart';

class numberinputscreen extends StatefulWidget {
  const numberinputscreen({super.key});

  @override
  State<numberinputscreen> createState() => _numberinputscreenState();
}

class _numberinputscreenState extends State<numberinputscreen> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  void _navigateToNextScreen() {
    try {
      int num1 = int.parse(_controller1.text);
      int num2 = int.parse(_controller2.text);

      int sum = num1 + num2;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => sumscreen(sum: sum),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter valid numbers.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sum of Two Numbers'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter the first number',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter the second number',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _navigateToNextScreen,
              child: Text('Calculate Sum'),
            ),
          ],
        ),
      ),
    );
  }
}
