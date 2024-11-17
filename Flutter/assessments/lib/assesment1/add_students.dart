import 'package:flutter/material.dart';

import 'db_heper.dart';

class AddStudentScreen extends StatefulWidget {
  @override
  _AddStudentScreenState createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  final _formKey = GlobalKey<FormState>();
  String _firstName = '', _lastName = '', _email = '', _course = 'B.Tech';
  String _address = '', _pincode = '', _city = 'New York';
  String _totalFees = '', _contactNumber = '';

  Future<void> _addStudent() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      await DBHelper().insertStudent({
        'firstName': _firstName,
        'lastName': _lastName,
        'email': _email,
        'course': _course,
        'address': _address,
        'pincode': _pincode,
        'city': _city,
        'totalFees': _totalFees,
        'contactNumber': _contactNumber,
        'marks': '',
      });
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Student added successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Student")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'First Name'),
                validator: (value) {
                  if (value == null || value.isEmpty || !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                    return 'Enter a valid first name';
                  }
                  return null;
                },
                onSaved: (value) => _firstName = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Last Name'),
                onSaved: (value) => _lastName = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                onSaved: (value) => _email = value!,
              ),
              DropdownButtonFormField(
                value: _course,
                items: ['B.Tech', 'M.Tech', 'BBA', 'MBA'].map((course) {
                  return DropdownMenuItem(child: Text(course), value: course);
                }).toList(),
                onChanged: (value) => setState(() => _course = value as String),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Address'),
                onSaved: (value) => _address = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Pincode'),
                validator: (value) {
                  if (value == null || !RegExp(r'^\d{6}$').hasMatch(value)) {
                    return 'Enter a valid 6-digit pincode';
                  }
                  return null;
                },
                onSaved: (value) => _pincode = value!,
              ),
              DropdownButtonFormField(
                value: _city,
                items: ['New York', 'Los Angeles', 'San Francisco', 'Chicago'].map((city) {
                  return DropdownMenuItem(child: Text(city), value: city);
                }).toList(),
                onChanged: (value) => setState(() => _city = value as String),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Total Fees'),
                onSaved: (value) => _totalFees = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contact Number'),
                validator: (value) {
                  if (value == null || !RegExp(r'^\d{10}$').hasMatch(value)) {
                    return 'Enter a valid 10-digit contact number';
                  }
                  return null;
                },
                onSaved: (value) => _contactNumber = value!,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Add Student'),
                onPressed: _addStudent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
