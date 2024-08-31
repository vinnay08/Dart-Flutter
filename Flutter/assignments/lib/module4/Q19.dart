import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  void _onMenuItemSelected(BuildContext context, String value) {
    switch (value) {
      case 'profile':
        _showMessage(context, 'Profile clicked');
        break;
      case 'logout':
        _showMessage(context, 'Logout clicked');
        break;
    }
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Options Menu Example'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {
              _onMenuItemSelected(context, value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 'profile',
                  child: Text('Profile'),
                ),
                PopupMenuItem(
                  value: 'logout',
                  child: Text('Logout'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}