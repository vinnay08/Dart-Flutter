import 'package:assignments/module4/Q22(photo).dart';
import 'package:assignments/module4/Q22(audio).dart';
import 'package:assignments/module4/Q22(video).dart';
import 'package:flutter/material.dart';

class photos extends StatefulWidget {
  const photos({super.key});

  @override
  State<photos> createState() => _photosState();
}

class _photosState extends State<photos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text('Gallery'),
            ),
            ListTile(
              title: Text('Photos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => photo()),
                );
              },
            ),
            ListTile(
              title: Text('Audios'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => audio()),
                );
              },
            ),
            ListTile(
              title: Text('Videos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => video()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
