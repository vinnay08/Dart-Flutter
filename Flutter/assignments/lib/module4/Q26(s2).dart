import 'package:assignments/module4/Q26(s1).dart';
import 'package:flutter/material.dart';

class twoactivity extends StatefulWidget {
  const twoactivity({super.key});

  @override
  State<twoactivity> createState() => _twoactivityState();
}

class _twoactivityState extends State<twoactivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Activity"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Two Activity",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => oneactivity()));
                },
                child: Text('Back'))
          ],
        ),
      ),
    );
  }
}
