import 'package:flutter/material.dart';

class simplealertdialog extends StatelessWidget {
  const simplealertdialog({super.key});

  @override
  Widget build(BuildContext context) {
    showAlertDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Row(
              children: [
                Icon(Icons.info),
                SizedBox(width: 10,),
                Text('Alert Dialog'),
              ],
            ),
            content: const Text('This is an alert dialog description.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(
                    'You clicked OK',
                  );
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAlertDialog(context);
          },
          child: const Text('Show Alert Dialog'),
        ),
      ),
    );
  }
}