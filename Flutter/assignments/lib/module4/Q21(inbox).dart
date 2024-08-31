import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('A'),
            ),
            title: Text('Email subject $index'),
            subtitle: Text('This is a dummy email body for inbox $index.'),
          );
        },
      ),
    );
  }
}