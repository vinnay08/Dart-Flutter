// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  const MenuItem({super.key});

  @override
  State<MenuItem> createState() => _MenuItemState();
}

final TextEditingController nameController = TextEditingController();
final TextEditingController priceController = TextEditingController();

class _MenuItemState extends State<MenuItem> {
  List<String> sellers = [];
  String? selectedValue;
  List<Map<String, dynamic>> items = []; // Start with an empty list
  // int newItemCounter = 1;

  void _addnewItem() {
    if (selectedValue == null) {
      // Check if a seller is selected
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("No Seller Selected"),
          content: Text("Please select a seller before adding a new item."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("OK"),
            ),
          ],
        ),
      );
      return;
    }
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Add New Item"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController, // Assign controller
              decoration: InputDecoration(labelText: "Item Name"),
            ),
            TextField(
              controller: priceController, // Assign controller
              decoration: InputDecoration(labelText: "Item Price"),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              String name = nameController.text;
              int? price = int.tryParse(priceController.text);

              if (name.isNotEmpty && price != null) {
                setState(() {
                  items.add({'name': name, 'price': price, 'selected': false});
                });
                nameController.clear();
                priceController.clear();
              }

              Navigator.pop(context);
            },
            child: Text("Add"),
          ),
        ],
      ),
    );
  }

  void _editItem(int index) {
    String name = items[index]["name"];
    String price = items[index]["price"].toString();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Edit Item"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: TextEditingController(text: name),
                decoration: InputDecoration(labelText: "Name"),
                onChanged: (value) {
                  name = value;
                },
              ),
              TextField(
                controller: TextEditingController(text: price),
                decoration: InputDecoration(labelText: "Price"),
                onChanged: (value) {
                  price = value;
                },
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  items[index]["name"] = name;
                  items[index]["price"] = price;
                });
                Navigator.of(context).pop();
              },
              child: Text("Save"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  void _saveItems() async {
    if (selectedValue == null) {
      // Check if a seller is selected
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("No Seller Selected"),
          content: Text("Please select a seller before saving items."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("OK"),
            ),
          ],
        ),
      );
      return;
    }

    try {
      // Save items to Firestore under the selected seller
      await FirebaseFirestore.instance
          .collection('Seller Items')
          .doc(selectedValue)
          .set({'items': items});

      // Show success message
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Success"),
          content: Text("Items have been saved successfully."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("OK"),
            ),
          ],
        ),
      );
    } catch (e) {
      // Show error message
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Error"),
          content: Text("An error occurred while saving items: $e"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    fetchsellers();
  }

  Future<void> fetchsellers() async {
    final snapshot =
        await FirebaseFirestore.instance.collection('Seller Info').get();
    setState(() {
      sellers = snapshot.docs.map((doc) => doc['Name'].toString()).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "Manage Menu Items",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 50,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Select Seller : ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 10),
                  DropdownButton(
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    underline: Container(height: 1, color: Colors.grey),
                    items: sellers
                        .map((seller) => DropdownMenuItem(
                              child: Text(seller),
                              value: seller,
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  elevation: 2,
                  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              _editItem(index);
                            },
                            child: Text(
                              items[index]["name"],
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              _editItem(index);
                            },
                            child: Text(
                              "${items[index]["price"]}",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Checkbox(
                          value: items[index]["selected"],
                          onChanged: (bool? value) {
                            setState(() {
                              items[index]["selected"] = value ?? false;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: _saveItems,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 10,
                  ),
                  child: Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  )),
              ElevatedButton(
                  onPressed: _addnewItem,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 10,
                  ),
                  child: Text(
                    "Add New Item",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
