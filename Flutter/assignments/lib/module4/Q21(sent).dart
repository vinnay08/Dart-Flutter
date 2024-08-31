import 'package:flutter/material.dart';

class SentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sent'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('B'),
            ),
            title: Text('Sent email subject $index'),
            subtitle: Text('This is a dummy email body for sent mail $index.'),
          );
        },
      ),
    );
  }
}