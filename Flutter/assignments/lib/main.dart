// import 'package:assignments/module3/Q11.dart';
// import 'package:assignments/module3/Q12(d1).dart';
// import 'package:assignments/module4/Design1.dart';
// import 'package:assignments/module4/Design2.dart';
// import 'package:assignments/module4/Design3.dart';
// import 'package:assignments/module4/Q14.dart';
// import 'package:assignments/module4/Q15.dart';
// import 'package:assignments/module4/Q16.dart';
// import 'package:assignments/module4/Q17.dart';
// import 'package:assignments/module4/Q18.dart';
// import 'package:assignments/module4/Q19.dart';
// import 'package:assignments/module4/Q25(s1).dart';
// import 'package:assignments/module4/Q26(s1).dart';
// import 'package:assignments/module4/Q28(s1).dart';
// import 'package:assignments/module4/Q21.dart';
// import 'package:assignments/module4/Q22.dart';
import 'package:assignments/module4/Q23.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: photos(),
    );
  }
}


