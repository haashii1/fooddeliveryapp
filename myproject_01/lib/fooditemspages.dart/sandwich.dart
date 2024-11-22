import 'package:flutter/material.dart';

class Sandwich extends StatelessWidget {
  Sandwich({super.key});

  final List<SandwichData> sandwichData = [
    SandwichData('sandwich jnsc', 'muhus restaurant',
        'assets/pizza-01-icon-2048x1751-sxphzhhe.png', 23),
    SandwichData('sandwich jnsc', 'muhus restaurant',
        'assets/pizza-01-icon-2048x1751-sxphzhhe.png', 23),
    SandwichData(
        'sandwich jdk',
        'hi jsjs',
        'assets/chicken-biryani-plate-isolated-white-background-delicious-spicy-biryani-isolated_667286-5794.jpg',
        88),
    SandwichData('sandwich hgj', "hjkjkk", 'assets/1000045560.jpg', 2),
  ];

  Widget _buildSandwichItem(SandwichData sandwich) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              sandwich.imageAsset,
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
                  sandwich.name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  sandwich.restaurant,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.normal),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Price: \$${sandwich.price.toStringAsFixed(2)}"),
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
          'Sandwich',
          style: TextStyle(
            color: Color.fromARGB(255, 2, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:GridView.builder(
        
        itemCount: sandwichData.length,
        itemBuilder: (context, index) {
          return _buildSandwichItem(sandwichData[index]);
        },  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
        ),
      ),
    );
  }
}

class SandwichData {
  final String name;
  final String restaurant;
  final String imageAsset;
  final double price;

  SandwichData(this.name, this.restaurant, this.imageAsset, this.price);
}
