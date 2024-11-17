import 'package:flutter/material.dart';
import 'assesment1/add_students.dart';
import 'assesment1/addmarks.dart';
import 'assesment1/view_students.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StudentManagementSystem(),
  ));
}

class StudentManagementSystem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Management System")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Add Student'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddStudentScreen()),
                );
              },
            ),
            ElevatedButton(
              child: Text('View Students'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewStudentsScreen()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Add Marks'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddMarksScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}