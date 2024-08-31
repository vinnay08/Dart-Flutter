import 'package:flutter/material.dart';

class CitySelectionScreen extends StatefulWidget {
  @override
  _CitySelectionScreenState createState() => _CitySelectionScreenState();
}

class _CitySelectionScreenState extends State<CitySelectionScreen> {
  String _selectedCity = "Select a city";
  List<String> _cities = ['New York', 'London', 'Tokyo', 'Paris', 'Sydney'];

  void _showCitySelectionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Select a City"),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: _cities.map((city) {
                return RadioListTile(
                  title: Text(city),
                  value: city,
                  groupValue: _selectedCity,
                  onChanged: (value) {
                    setState(() {
                      _selectedCity = value!;
                    });
                    Navigator.of(context).pop();
                  },
                );
              }).toList(),
            ),
          ),
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
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
      appBar: AppBar(
        title: const Text("City Selector"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Text(
              "Selected City:",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              _selectedCity,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showCitySelectionDialog,
              child: const Text("Choose a City"),
            ),
          ],
        ),
      ),
    );
  }
}