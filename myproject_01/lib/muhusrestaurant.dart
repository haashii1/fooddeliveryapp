import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myproject_01/home.dart';

class Muhusrestaurant extends StatefulWidget {
  const Muhusrestaurant({super.key});

  @override
  _MuhusrestaurantState createState() => _MuhusrestaurantState();
}

class _MuhusrestaurantState extends State<Muhusrestaurant> {
  final List<String> items = [
    'sandwich',
    'pizza',
    'burger',
    'hotdog',
  ];

  // Define the SandwichData class correctly
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
  final List<PizzaData> pizzadata = [
    PizzaData('Pizza JNSC', 'Muhus Restaurant',
        'assets/pizza-01-icon-2048x1751-sxphzhhe.png', 23),
    PizzaData('Pizza JNSC', 'Muhus Restaurant',
        'assets/pizza-01-icon-2048x1751-sxphzhhe.png', 23),
    PizzaData(
        'Pizza JDK',
        'Hi Jsjs',
        'assets/chicken-biryani-plate-isolated-white-background-delicious-spicy-biryani-isolated_667286-5794.jpg',
        88),
    PizzaData('Pizza HGJ', 'HJJKJK', 'assets/1000045560.jpg', 2),
  ];
  final List<BurgerData> burgerData = [
    BurgerData(
        'Cheeseburger', 'Muhus Restaurant', 'assets/burger-image-1.png', 15),
    BurgerData(
        'Veggie Burger', 'Muhus Restaurant', 'assets/burger-image-2.png', 12),
    BurgerData('Bacon Burger', 'Hi Jsjs', 'assets/burger-image-3.png', 18),
    BurgerData(
        'Spicy Chicken Burger', 'HJJKJK', 'assets/burger-image-4.png', 20),
  ];
  final List<HotdogData> hotdogData = [
    HotdogData(
        'Classic Hotdog', 'Muhus Restaurant', 'assets/hotdog-image-1.png', 5),
    HotdogData(
        'Chili Cheese Dog', 'Muhus Restaurant', 'assets/hotdog-image-2.png', 7),
    HotdogData('Spicy Hotdog', 'Hi Jsjs', 'assets/hotdog-image-3.png', 6),
    HotdogData('Veggie Hotdog', 'HJJKJK', 'assets/hotdog-image-4.png', 4),
  ];
  // Track the selected item
  String selectedItem = 'sandwich';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Restaurant View'),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
            );
          },
          child: const CircleAvatar(
            radius: 5.0,
            child: Icon(Icons.arrow_back),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {}, // Add functionality here if needed
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 300,
              width: 390,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'assets/InShot_20241031_113540209.jpg',
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    children: [
                      Text(
                        '  Muhus Restaurant',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    children: [
                      Text(''' msuhsdnsdnmymndfjjfdjfhjhkjhjbabcmsuhsdnsdhhhgg
 msuhsdnsdnmymndfjjfdjfhjhkjhjbabcmsuhsdnsdhhhgg
 msuhsdnsdnmymndfjjfdjfhjhkjhjbabcmsuhsdnsdhhhgg'''),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Icon(Icons.star),
                      Text('4.9'),
                      SizedBox(width: 30),
                      Icon(Icons.pedal_bike_outlined),
                      SizedBox(width: 5),
                      Text('free'),
                      SizedBox(width: 30),
                      Icon(Icons.punch_clock),
                      SizedBox(width: 5),
                      Text('15-min '),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              height: 50, // Set height for the horizontal ListView
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = items[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedItem = item;
                      });
                    },
                    child: Card(
                      margin: const EdgeInsets.all(8),
                      color: selectedItem == item
                          ? Colors.blue // Highlight selected item
                          : Colors.white,
                      child: Container(
                        width: 100, // Set a fixed width for the card
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          item,
                          style: TextStyle(
                            color: selectedItem == item
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: _buildSelectedItemContent(selectedItem),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.green,
    );
  }

  // Builds the content displayed based on the selected item
  Widget _buildSelectedItemContent(String selectedItem) {
    switch (selectedItem) {
      case 'sandwich':
        return Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                ),
                itemCount: sandwichData.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildSandwichItem(sandwichData[index]);
                },
              ),
            ),
          ],
        );
      case 'pizza':
        return Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                ),
                itemCount: pizzadata.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildPizzaItem(pizzadata[index]);
                },
              ),
            ),
          ],
        );
      case 'burger':
        return Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                ),
                itemCount: burgerData.length, // Ensure burgerData is defined
                itemBuilder: (BuildContext context, int index) {
                  return _buildBurgerItem(burgerData[
                      index]); // Use _buildBurgerItem for burger items
                },
              ),
            ),
          ],
        );
      case 'hotdog':
        return Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                ),
                itemCount: hotdogData.length, // Change burgerData to hotdogData
                itemBuilder: (BuildContext context, int index) {
                  return _buildHotdogItem(hotdogData[
                      index]); // Use _buildHotdogItem instead of _buildBurgerItem
                },
              ),
            ),
          ],
        );
      default:
        return const Text('Select a category to view items');
    }
  }

  // Builds each sandwich item in the grid
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
}

class HotdogData {
  final String name;
  final String restaurant;
  final String imageAsset;
  final double price;

  HotdogData(this.name, this.restaurant, this.imageAsset, this.price);
}

class BurgerData {
  final String name;
  final String restaurant;
  final String imageAsset;
  final double price;

  BurgerData(this.name, this.restaurant, this.imageAsset, this.price);
}

class PizzaData {
  final String name;
  final String restaurant;
  final String imageAsset;
  final double price;

  PizzaData(this.name, this.restaurant, this.imageAsset, this.price);
}

class SandwichData {
  final String name;
  final String restaurant;
  final String imageAsset;
  final double price;

  SandwichData(this.name, this.restaurant, this.imageAsset, this.price);
}
