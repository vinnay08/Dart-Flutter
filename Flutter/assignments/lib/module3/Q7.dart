import 'package:flutter/material.dart';

class Checkboxhide extends StatefulWidget {
  const Checkboxhide({super.key});

  @override
  State<Checkboxhide> createState() => _CheckboxhideState();
}

class _CheckboxhideState extends State<Checkboxhide> {
  bool _isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_isChecked)
            Center(
              child: Container(
                child: const Text("Click on the checkbox to hide the text"),
              ),
            ),
          Checkbox(
            value: _isChecked,
            onChanged: (value) {
              setState(() {
                _isChecked = value!;
              });
            },
          ),
          if (!_isChecked)
            Center(
              child: Container(
                child: const Text('Text hidden successfully 👍'),
              ),
            ),
        ],
      ),
    );
  }
}
