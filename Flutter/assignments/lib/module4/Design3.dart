import 'package:flutter/material.dart';

class design3 extends StatelessWidget {
  const design3({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _buildItemRow({
      required String imagePath,
      required String title,
      required double price,
      required int quantity,
    }) {
      return Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePath,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 30),
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Icon(Icons.remove),
                  const SizedBox(width: 5),
                  Text(
                    '$quantity',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Icon(Icons.add),
                ],
              ),
            ],
          ),
          const SizedBox(width: 40),
          Column(
            children: [
              Text(
                '\$ $price',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade400,
                ),
              ),
              const SizedBox(height: 20),
              const Icon(Icons.close_outlined),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 2, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cart',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Thu, 6th June',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '+ Add to Order',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade400,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            _buildItemRow(
              imagePath: 'assets/all_images/noodle.jpg',
              title: 'Chicken Burger',
              price: 7.00,
              quantity: 2,
            ),
            SizedBox(
              height: 25,
            ),
            _buildItemRow(
              imagePath: 'assets/all_images/noodle.jpg',
              title: 'Chicken Burger',
              price: 7.00,
              quantity: 2,
            ),
            SizedBox(
              height: 25,
            ),
            _buildItemRow(
              imagePath: 'assets/all_images/noodle.jpg',
              title: 'Chicken Burger',
              price: 7.00,
              quantity: 2,
            ),
            SizedBox(
              height: 25,
            ),
            _buildItemRow(
              imagePath: 'assets/all_images/noodle.jpg',
              title: 'Chicken Burger',
              price: 7.00,
              quantity: 2,
            ),
          ],
        ),
      ),
    );
  }
}
