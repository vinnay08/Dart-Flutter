import 'package:assignments/module4/Q21(draft).dart';
import 'package:assignments/module4/Q21(inbox).dart';
import 'package:assignments/module4/Q21(sent).dart';
import 'package:assignments/module4/Q21(setting).dart';
import 'package:flutter/material.dart';

class GmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gmail Clone'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text('Gmail Clone'),
            ),
            ListTile(
              title: Text('Inbox'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InboxScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Sent'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SentScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Drafts'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DraftScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text('Select a screen from the drawer or bottom navigation'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.shade700,
        selectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.inbox,
              color: Colors.black,
            ),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.send,
              color: Colors.black,
            ),
            label: 'Sent',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.drafts, color: Colors.black),
            label: 'Drafts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InboxScreen()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SentScreen()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DraftScreen()),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
              break;
          }
        },
      ),
    );
  }
}