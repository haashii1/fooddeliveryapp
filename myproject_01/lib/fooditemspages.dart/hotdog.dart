import 'package:flutter/material.dart';

class Hotdog extends StatelessWidget {
  Hotdog({super.key});

  final List<HotdogData> hotdogData = [
    HotdogData('Hotdog Classic', 'Muhus Restaurant',
        'assets/pizza-01-icon-2048x1751-sxphzhhe.png', 23),
    HotdogData('Hotdog Deluxe', 'Muhus Restaurant',
        'assets/pizza-01-icon-2048x1751-sxphzhhe.png', 23),
    HotdogData(
        'Hotdog Supreme',
        'Hi Hotdogs',
        'assets/chicken-biryani-plate-isolated-white-background-delicious-spicy-biryani-isolated_667286-5794.jpg',
        88),
    HotdogData('Hotdog Special', "HJ Hotdogs", 'assets/1000045560.jpg', 2),
  ];

  Widget _buildHotdogItem(HotdogData hotdog) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              hotdog.imageAsset,
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
                  hotdog.name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  hotdog.restaurant,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.normal),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Price: \$${hotdog.price.toStringAsFixed(2)}"),
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
          'Hotdog',
          style: TextStyle(
            color: Color.fromARGB(255, 2, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: hotdogData.length,
        itemBuilder: (context, index) {
          return _buildHotdogItem(hotdogData[index]);
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
      ),
    );
  }
}

class HotdogData {
  final String name;
  final String restaurant;
  final String imageAsset;
  final double price;

  HotdogData(this.name, this.restaurant, this.imageAsset, this.price);
}
