import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Design2 extends StatelessWidget {
  const Design2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.orange,
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: Icon(Icons.heart_broken),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 250,
            child: Container(
              width: 415,
              height: 700,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 236, 215, 215),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
            ),
          ),
          Positioned(
              top: 180,
              left: 135,
              child: Container(
                height: 150,
                width: 150,
                child: const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/all_images/soup.jpg',
                  ),
                ),
              )),
          Positioned(
            top: 360,
            left: 100,
            child: Column(
              children: [
                Text(
                  'Sei Ua Samun Phrai',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.timelapse,
                      color: Colors.blue,
                    ),
                    Text("50min"),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text("4.8"),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.red,
                    ),
                    Text('365KCAL')
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        's12',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: double.infinity,
                        width: 142,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(70)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.remove),
                            Container(
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                            Icon(Icons.add),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Positioned(
            top: 530,
            left: 25,
            child: Text(
              "Ingredients",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            top: 570,
            left: 24,
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Image.asset(
                          "assets/all_images/noodles.jpg",
                          height: 35,
                        ),
                      ),
                      Text("Noodle"),
                    ],
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Container(
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Image.asset(
                          "assets/all_images/noodles.jpg",
                          height: 35,
                        ),
                      ),
                      Text("Noodle"),
                    ],
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Container(
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Image.asset(
                          "assets/all_images/noodles.jpg",
                          height: 35,
                        ),
                      ),
                      Text("Noodle"),
                    ],
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Container(
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Image.asset(
                          "assets/all_images/noodles.jpg",
                          height: 35,
                        ),
                      ),
                      Text("Noodle"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 680,
              left: 25,
              child: Text(
                "About",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: 720,
              left: 25,
              child: Text(
                "The foods are made with good quality ingredients and\n make with healthy contents of veges and fruits enjoy\n your dish.",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ],
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.shopping_bag, color: Colors.black),
              onPressed: () {},
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Text(
                '1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
