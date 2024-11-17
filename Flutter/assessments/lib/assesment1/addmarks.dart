import 'package:flutter/material.dart';

import 'db_heper.dart';

class AddMarksScreen extends StatefulWidget {
  @override
  _AddMarksScreenState createState() => _AddMarksScreenState();
}

class _AddMarksScreenState extends State<AddMarksScreen> {
  final _formKey = GlobalKey<FormState>();
  String _selectedStudentId = '';
  String _marks = '';

  Future<List<Map<String, dynamic>>> _fetchStudents() async {
    return await DBHelper().getAllStudents();
  }

  Future<void> _addMarks() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      await DBHelper().updateMarks(int.parse(_selectedStudentId), _marks);
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Marks added successfully')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Marks")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FutureBuilder<List<Map<String, dynamic>>>(
          future: _fetchStudents(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return Center(child: CircularProgressIndicator());

            final students = snapshot.data!;
            return Form(
              key: _formKey,
              child: ListView(
                children: [
                  DropdownButtonFormField(
                    value: _selectedStudentId.isEmpty ? null : _selectedStudentId,
                    hint: Text("Select Student"),
                    items: students.map((student) {
                      return DropdownMenuItem(
                        child: Text("${student['firstName']} ${student['lastName']}"),
                        value: student['id'].toString(),
                      );
                    }).toList(),
                    onChanged: (value) => setState(() => _selectedStudentId = value as String),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Marks'),
                    validator: (value) {
                      if (value == null || !RegExp(r'^\d+$').hasMatch(value)) {
                        return 'Enter valid marks';
                      }
                      return null;
                    },
                    onSaved: (value) => _marks = value!,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    child: Text('Add Marks'),
                    onPressed: _addMarks,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}