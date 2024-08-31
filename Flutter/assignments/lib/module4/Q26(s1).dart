import 'package:assignments/module4/Q26(s2).dart';
import 'package:flutter/material.dart';

class oneactivity extends StatefulWidget {
  const oneactivity({super.key});

  @override
  State<oneactivity> createState() => _oneactivityState();
}

class _oneactivityState extends State<oneactivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Activity"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "One Activity",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => twoactivity()));
                },
                child: Text('Next Activity'))
          ],
        ),
      ),
    );
  }
}
