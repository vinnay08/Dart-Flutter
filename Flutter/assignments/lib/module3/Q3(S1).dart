import 'package:assignments/module3/Q3(S2).dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class NumberInputScreen extends StatefulWidget {
  @override
  _NumberInputScreenState createState() => _NumberInputScreenState();
}

class _NumberInputScreenState extends State<NumberInputScreen> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController _startController = TextEditingController();
  TextEditingController _endController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Two Numbers'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _startController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Start Number'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a start number';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _endController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'End Number'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an end number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    int startNumber = int.parse(_startController.text);
                    int endNumber = int.parse(_endController.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NumberRangeScreen(
                          startNumber: startNumber,
                          endNumber: endNumber,
                        ),
                      ),
                    );
                  }
                },
                child: Text('Show Numbers'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
