// import 'dart:math';

import 'package:flutter/material.dart';

class changecolour extends StatefulWidget {
  const changecolour({super.key});

  @override
  State<changecolour> createState() => _changecolourState();
}

class _changecolourState extends State<changecolour> {
  List<Color> _colors = [Colors.blue, Colors.red, Colors.green, Colors.yellow];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colour Change Container"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 790,
              width: 600,
              color: _colors[_currentIndex],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _currentIndex = (_currentIndex + 1) % _colors.length;
          });
        },
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.color_lens),
      ),
    );
  }
}
