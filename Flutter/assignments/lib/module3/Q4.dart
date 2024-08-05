import 'package:flutter/material.dart';

class Question4 extends StatefulWidget {
  const Question4({super.key});

  @override
  State<Question4> createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  int _value = 1;
  String _selectedOperation = 'Add';
  String _result = '';

  void calculate() {
    double num1 = double.tryParse(n1.text) ?? 0;
    double num2 = double.tryParse(n2.text) ?? 0;
    double result;

    if (_selectedOperation == 'Add') {
      result = num1 + num2;
    } else if (_selectedOperation == 'Subtract') {
      result = num1 - num2;
    } else if (_selectedOperation == 'Multiply') {
      result = num1 * num2;
    } else if (_selectedOperation == 'Divide') {
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        result = double.nan; // Not a Number (to handle division by zero)
      }
    } else {
      result = 0;
    }

    setState(() {
      _result = 'Result: $result';
    });
  }

  void _handleRadioValueChange(int? value) {
    setState(() {
      _value = value!;
      switch (_value) {
        case 1:
          _selectedOperation = 'Add';
          break;
        case 2:
          _selectedOperation = 'Subtract';
          break;
        case 3:
          _selectedOperation = 'Multiply';
          break;
        case 4:
          _selectedOperation = 'Divide';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Q4"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RadioListTile(
            value: 1,
            groupValue: _value,
            onChanged: _handleRadioValueChange,
            activeColor: Colors.deepOrange,
            title: Text('Addition'),
          ),
          RadioListTile(
            value: 2,
            groupValue: _value,
            onChanged: _handleRadioValueChange,
            activeColor: Colors.deepOrange,
            title: Text('Subtraction'),
          ),
          RadioListTile(
            value: 3,
            groupValue: _value,
            onChanged: _handleRadioValueChange,
            activeColor: Colors.deepOrange,
            title: Text('Multiplication'),
          ),
          RadioListTile(
            value: 4,
            groupValue: _value,
            onChanged: _handleRadioValueChange,
            activeColor: Colors.deepOrange,
            title: Text('Division'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: n1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter Number 1",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                    width: 1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 2)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: n2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter Number 2",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                    width: 1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 2)),
              ),
            ),
          ),
          ElevatedButton(onPressed: calculate, child: Text("Calculate")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              _result,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
