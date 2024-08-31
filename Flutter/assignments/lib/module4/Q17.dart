import 'package:flutter/material.dart';

class ExitConfirmationScreen extends StatefulWidget {
  @override
  _ExitConfirmationScreenState createState() => _ExitConfirmationScreenState();
}

class _ExitConfirmationScreenState extends State<ExitConfirmationScreen> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Exit App'),
            content: Text('Do you want to exit the app?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Exit Confirmation'),
        ),
        body: Center(
          child: Text('Press back button to exit the app.'),
        ),
      ),
    );
  }
}