import 'package:flutter/material.dart';

class Design1 extends StatelessWidget {
  const Design1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.arrow_back),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.search_rounded),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  "Restaurant",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Container(
                      height: 25,
                      width: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          '20-30mm',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(3)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '2.4km',
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Restaurant',
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Center(
                          child: Text(
                        "R",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Orange Sandwitches are Delicious',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.orange,
                        ),
                        Text(
                          '4.7',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 120,
                        child: Center(
                            child: Text(
                          "Recommend",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.orange.shade400,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        child: Center(
                            child: Text(
                          "Popular",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        child: Center(
                            child: Text(
                          "Noodles",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        child: Center(
                            child: Text(
                          "Pizzas",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 120,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/all_images/soup.jpg",
                        width: 120,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Soba Soup",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              "No.1 in Sales",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.orange),
                            ),
                            Text(
                              "S12",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 94,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Column(
                          children: [
                            Icon(
                              Icons.chevron_right,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(32)),
                ),
              ),
              Card(
                child: Container(
                  height: 120,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/all_images/soup.jpg",
                        width: 120,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sei Ua Samun",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              "No.1 in Sales",
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "S15",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 94,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Column(
                          children: [
                            Icon(
                              Icons.chevron_right,
                              size: 30,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(32)),
                ),
              ),
              Card(
                child: Container(
                  height: 120,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/all_images/soup.jpg",
                        width: 120,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ratatoullie Pasta",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              "No.1 in Sales",
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "S18",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Column(
                          children: [
                            Icon(
                              Icons.chevron_right,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(32)),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.orange, width: 3)),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
          size: 30,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.0),
        ),
      ),
    );
  }
}
