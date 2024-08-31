import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AlertButton extends StatelessWidget {
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(Icons.info, color: Colors.blue),
              SizedBox(width: 10),
              Text('Choose an option'),
            ],
          ),
          content: Text('Please choose one of the options below.'),
          actions: [
            TextButton(
              child: Text('Positive'),
              onPressed: () {
                Navigator.of(context).pop();
                Fluttertoast.showToast(
                  msg: "You Clicked on Positive button!",
                  toastLength: Toast.LENGTH_SHORT, // This will be ignored
                  timeInSecForIosWeb: 2, // Duration of the toast in seconds
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.blue,
                  textColor: Colors.white,
                );
              },
            ),
            TextButton(
              child: Text('Negative'),
              onPressed: () {
                Navigator.of(context).pop();
                Fluttertoast.showToast(
                  msg: "You Clicked on Negative button!",
                  toastLength: Toast.LENGTH_SHORT, // This will be ignored
                  timeInSecForIosWeb: 3, // Duration of the toast in seconds
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                );
              },
            ),
            TextButton(
              child: Text('Neutral'),
              onPressed: () {
                Navigator.of(context).pop();
                Fluttertoast.showToast(
                  msg: "You Clicked on Neutral button!",
                  toastLength: Toast.LENGTH_SHORT, // This will be ignored
                  timeInSecForIosWeb: 4, // Duration of the toast in seconds
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.grey.shade400,
                  textColor: Colors.white,
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showAlertDialog(context);
            },
            child: Text("Show Alert Dialog")),
      ),
    );
  }
}
