import 'package:assignments/module4/Q22(photo).dart';
import 'package:assignments/module4/Q22(audio).dart';
import 'package:assignments/module4/Q22(video).dart';
import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  int myIndex = 0;
  List<Widget> myWidgets = [
    photo(),
    audio(),
    video(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gallery'),
        ),
        body: Center(
          child: myWidgets[myIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey.shade700,
          selectedItemColor: Colors.white,
          // showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) {
            setState(() {
              myIndex = value;
            });
          },
          currentIndex: myIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.photo_library),
              label: 'Photos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.audiotrack),
              label: 'Audios',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library),
              label: 'Videos',
            ),
          ],
        ));
  }
}
