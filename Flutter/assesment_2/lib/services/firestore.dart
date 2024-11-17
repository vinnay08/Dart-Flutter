import 'package:cloud_firestore/cloud_firestore.dart';

class Firestore {
  final CollectionReference seller =
      FirebaseFirestore.instance.collection("Seller Info");

  //Creating
  Future<void> AddSeller(String name, String phone, String address) {
    return seller.add({
      "Name": name,
      "Phone": phone,
      "Address": address,
      "Time": Timestamp.now()
    });
  }

  //Reading
  Stream<QuerySnapshot> getSellerInfo(){
    final sellerInfo = seller.orderBy("Time",descending: true).snapshots();
    return sellerInfo;
  }

  //Seller Items fetching
  Stream<QuerySnapshot> getSellerItems(String sellerName) {
    final sellerItems = FirebaseFirestore.instance
        .collection('Seller Items')
        .doc(sellerName)
        .collection('items')
        .snapshots();
    return sellerItems;
  }
}
