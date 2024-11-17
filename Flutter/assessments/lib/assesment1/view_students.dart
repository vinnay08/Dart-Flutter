import 'package:assessments/assesment1/db_heper.dart';
import 'package:flutter/material.dart';

class ViewStudentsScreen extends StatelessWidget {
  Future<List<Map<String, dynamic>>> _fetchStudents() async {
    return await DBHelper().getAllStudents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("View Students")),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _fetchStudents(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());

          final students = snapshot.data!;
          if (students.isEmpty) return Center(child: Text("No students available."));

          return ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              final student = students[index];
              return ListTile(
                title: Text("${student['firstName']} ${student['lastName']}"),
                subtitle: Text("Course: ${student['course']}"),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () async {
                    await DBHelper().deleteStudent(student['id']);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Student removed')));
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}