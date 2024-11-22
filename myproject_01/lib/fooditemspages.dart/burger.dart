import 'package:flutter/material.dart';

class Burger extends StatelessWidget {
  Burger({super.key});

  final List<BurgerData> burgerData = [
    BurgerData('Burger Classic', 'Muhus Restaurant',
        'assets/pizza-01-icon-2048x1751-sxphzhhe.png', 23),
    BurgerData('Burger Deluxe', 'Muhus Restaurant',
        'assets/pizza-01-icon-2048x1751-sxphzhhe.png', 23),
    BurgerData(
        'Burger Supreme',
        'Hi Burgers',
        'assets/chicken-biryani-plate-isolated-white-background-delicious-spicy-biryani-isolated_667286-5794.jpg',
        88),
    BurgerData('Burger Special', "HJ Burgers", 'assets/1000045560.jpg', 2),
  ];

  Widget _buildBurgerItem(BurgerData burger) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              burger.imageAsset,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  burger.name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  burger.restaurant,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.normal),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Price: \$${burger.price.toStringAsFixed(2)}"),
                    IconButton(
                      icon: const Icon(Icons.add),
                      color: Colors.amber,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Burger',
          style: TextStyle(
            color: Color.fromARGB(255, 2, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: burgerData.length,
        itemBuilder: (context, index) {
          return _buildBurgerItem(burgerData[index]);
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
      ),
    );
  }
}

class BurgerData {
  final String name;
  final String restaurant;
  final String imageAsset;
  final double price;

  BurgerData(this.name, this.restaurant, this.imageAsset, this.price);
}
