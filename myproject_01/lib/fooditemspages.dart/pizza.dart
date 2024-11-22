import 'package:flutter/material.dart';

class Pizza extends StatelessWidget {
  Pizza({super.key});

  final List<PizzaData> pizzaData = [
    PizzaData('Pizza Classic', 'Muhus Restaurant',
        'assets/pizza-01-icon-2048x1751-sxphzhhe.png', 23),
    PizzaData('Pizza Deluxe', 'Muhus Restaurant',
        'assets/pizza-01-icon-2048x1751-sxphzhhe.png', 23),
    PizzaData(
        'Pizza Supreme',
        'Hi Pizzas',
        'assets/chicken-biryani-plate-isolated-white-background-delicious-spicy-biryani-isolated_667286-5794.jpg',
        88),
    PizzaData('Pizza Special', "HJ Pizzas", 'assets/1000045560.jpg', 2),
  ];

  Widget _buildPizzaItem(PizzaData pizza) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              pizza.imageAsset,
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
                  pizza.name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  pizza.restaurant,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.normal),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Price: \$${pizza.price.toStringAsFixed(2)}"),
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
          'Pizza',
          style: TextStyle(
            color: Color.fromARGB(255, 2, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: pizzaData.length,
        itemBuilder: (context, index) {
          return _buildPizzaItem(pizzaData[index]);
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
      ),
    );
  }
}

class PizzaData {
  final String name;
  final String restaurant;
  final String imageAsset;
  final double price;

  PizzaData(this.name, this.restaurant, this.imageAsset, this.price);
}
