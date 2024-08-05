import 'package:flutter/material.dart';

class Imagearoundtext extends StatelessWidget {
  const Imagearoundtext({super.key});

  @override

  /// Builds a Scaffold with an AppBar and a Column containing a Row.
  ///
  /// The AppBar has the title "Image around text".
  /// The Column contains a single Row, which is currently empty.
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image around text"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/all_images/mountain.jpg',
                  height: 150,
                  width: 150,
                ),
                SizedBox(width: 20),
                Image.asset(
                  'assets/all_images/mountain.jpg',
                  height: 150,
                  width: 150,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text("Image around text"),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/all_images/mountain.jpg',
                    height: 150, width: 150),
                SizedBox(
                  width: 20,
                ),
                Image.asset('assets/all_images/mountain.jpg',
                    height: 150, width: 150),
              ],
            )
          ],
        ),
      ),
    );
  }
}
