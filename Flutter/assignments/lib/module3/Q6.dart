import 'package:flutter/material.dart';

class FontSizeAdjusterScreen extends StatefulWidget {
  @override
  _FontSizeAdjusterScreenState createState() => _FontSizeAdjusterScreenState();
}

class _FontSizeAdjusterScreenState extends State<FontSizeAdjusterScreen> {
  double _fontSize = 16.0;

  void _increaseFontSize() {
    setState(() {
      _fontSize += 2;
      if(_fontSize > 30) {
        _fontSize = 30;
      }
    });
  }

  void _decreaseFontSize() {
    setState(() {
      _fontSize -= 2;
      if(_fontSize < 10) {
        _fontSize = 10;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font Size Adjuster'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello World!',
              style: TextStyle(fontSize: _fontSize),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: _decreaseFontSize,
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _increaseFontSize,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
