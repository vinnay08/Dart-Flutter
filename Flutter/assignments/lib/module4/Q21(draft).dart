import 'package:flutter/material.dart';

class DraftScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drafts'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('C'),
            ),
            title: Text('Draft email subject $index'),
            subtitle: Text('This is a dummy email body for draft $index.'),
          );
        },
      ),
    );
  }
}