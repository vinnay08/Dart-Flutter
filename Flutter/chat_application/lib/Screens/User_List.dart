
import 'package:chat_application/Screens/Chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'sign_in.dart';



class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF639BF6),
          title: Text(
            'Chat Wave',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            InkWell(
              child: Icon(
                Icons.logout,
                color: Colors.white,
                size: 27,
              ),
              onTap: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignIn(),
                    ));
              },
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(2.0),
          child: _userList(),
        ));
  }

  Widget _userList() {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('users').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text('${snapshot.error}'),
          );
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              color: Color(0xFF639BF6),
            ),
          );
        } else {
          List<DocumentSnapshot> list = snapshot.data!.docs;
          return ListView.builder(
            itemBuilder: (context, index) {
              var data = list[index].data() as Map<String, dynamic>;
              var name = data['firstName'];
              var email = data['email'];
              var image = data['image'];
              if (auth.currentUser!.email != email) {
                print(email);
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(image),
                    radius: 30,
                  ),
                  title: Text(
                    name,
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text('Hey there can be friend?',
                      style: TextStyle(fontSize: 15)),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Chatpage(receiverEmail: data['firstName'], receiverId: data['uid'])
                      )),
                );
              } else {
                return Container();
              }
            },
            itemCount: list.length,
          );
        }
      },
    );
  }
}
