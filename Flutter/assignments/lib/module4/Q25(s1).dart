import 'dart:async';

import 'package:assignments/module4/Q25(s2).dart';
import 'package:flutter/material.dart';

class spalshscreen extends StatefulWidget {
  const spalshscreen({super.key});

  @override
  State<spalshscreen> createState() => _spalshscreenState();
}

class _spalshscreenState extends State<spalshscreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => s1())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Splash Screen",
        style: TextStyle(
          fontSize:25 ,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }
}