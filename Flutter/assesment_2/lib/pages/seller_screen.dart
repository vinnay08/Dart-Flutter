// ignore_for_file: prefer_const_constructors

import 'package:assesment_2/services/firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SellerScreen extends StatefulWidget {
  const SellerScreen({super.key});

  @override
  State<SellerScreen> createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController address = TextEditingController();

  final Firestore fire = Firestore();

  void OpenAddingList() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              titlePadding: EdgeInsets.zero,
              title: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                color: Colors.brown,
                child: Text(
                  'Add New Seller',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                  TextField(
                    controller: mobile,
                    decoration: InputDecoration(
                      labelText: 'Mobile',
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  TextField(
                    controller: address,
                    decoration: InputDecoration(
                      labelText: 'Address',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        fire.AddSeller(name.text, mobile.text, address.text);
                        name.clear();
                        mobile.clear();
                        address.clear();
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
            onPressed: OpenAddingList,
          ),
        ],
        backgroundColor: Colors.brown,
        title: Text(
          "Seller List",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: fire.getSellerInfo(),
          builder: (context, snapshots) {
            if (snapshots.hasData) {
              return ListView.builder(
                itemCount: snapshots.data!.docs.length,
                itemBuilder: (context, index) {
                  final data = snapshots.data!.docs[index].data()
                      as Map<String, dynamic>?;
                  return ListTile(
                    title: Text(data?['Name'] ?? 'No Name Available'),
                    subtitle: Text(data?['Phone'] ?? 'No Mobile Available'),
                    trailing: Text(data?['Address'] ?? 'No Address Available'),
                  );
                },
              );
            } else if (snapshots.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshots.hasError) {
              return Center(
                child: Text(snapshots.error.toString()),
              );
            } else if (!snapshots.hasData || snapshots.data!.docs.isEmpty) {
              return Center(
                child: Text("No Seller Found"),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
