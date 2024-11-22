import 'package:flutter/material.dart';
import 'package:myproject_01/brestaurant.dart';
import 'package:myproject_01/cartpage.dart';
import 'package:myproject_01/crestaurant.dart';
import 'package:myproject_01/fooditemspages.dart/burger.dart';
import 'package:myproject_01/fooditemspages.dart/hotelowners.dart/hotellogin.dart';

import 'package:myproject_01/fooditemspages.dart/pizza.dart';
import 'package:myproject_01/fooditemspages.dart/sandwich.dart';
import 'package:myproject_01/home01nvpage.dart';
import 'package:myproject_01/muhusrestaurant.dart';
import 'package:myproject_01/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> items = [
    'hotdog',
    'Sandwiches',
    'Burgers',
    'Pizza',
    'Biriyanis',
  ];

  final List<String> images = [
    'assets/c4ee15bc22fa3a63fce34fd4017026e4-removebg-preview.png'
        'assets/delicious-multilayered-sandwich-with-ham-cheese-tomato-lettuce-yellow-background_1282444-1978-removebg-preview.png',
    'assets/delicious-burgers-studio_23-2150902146-removebg-preview.png',
    'assets/top-view-pepperoni-pizza-with-mushroom-sausages-bell-pepper-olive-corn-black-wooden_141793-2158-removebg-preview.png',
    'assets/chicken-biryani-plate-isolated-white-background-delicious-spicy-biryani-isolated_667286-5794.jpg',
  ];

  // Replace Home() with HomeContent to prevent recursive instantiation
  final List<Widget> pages = [
    const HomeContent(),
    const Cartpage(),
  ];

  int currentIndex = 0;

  final List<String> titles = [
    'Home',
    'Cart',
  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_home_work),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Hotellogin()));
            },
          ),
        ],
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

// Define a separate HomeContent widget to avoid recursive instantiation of Home
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '  Hey, good afternoon',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {},
                  ),
                  border: const OutlineInputBorder(),
                  hintText: 'Search',
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '  All categories',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
// Inside the HomeContent widget's build method, replace the existing Row that contains the cards
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to Sandwiches page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Sandwich()), // Replace with actual page
                      );
                    },
                    child: Card(
                      color: Colors.white,
                      margin: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 90,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/delicious-multilayered-sandwich-with-ham-cheese-tomato-lettuce-yellow-background_1282444-1978-removebg-preview.png', // Update with correct asset path
                              width: 60,
                              height: 60,
                            ),
                            const SizedBox(height: 5),
                            const Text('Sandwiches'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Burgers page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Burger()), // Replace with actual page
                      );
                    },
                    child: Card(
                      color: Colors.white,
                      margin: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 90,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/delicious-burgers-studio_23-2150902146-removebg-preview.png', // Update with correct asset path
                              width: 60,
                              height: 60,
                            ),
                            const SizedBox(height: 5),
                            const Text('Burgers'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Pizza page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Pizza()), // Replace with actual page
                      );
                    },
                    child: Card(
                      color: Colors.white,
                      margin: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 90,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/top-view-pepperoni-pizza-with-mushroom-sausages-bell-pepper-olive-corn-black-wooden_141793-2158-removebg-preview.png', // Update with correct asset path
                              width: 60,
                              height: 60,
                            ),
                            const SizedBox(height: 5),
                            const Text('Pizza'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Pizza page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Pizza()), // Replace with actual page
                      );
                    },
                    child: Card(
                      color: Colors.white,
                      margin: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 90,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images__2_-removebg-preview.png', // Update with correct asset path
                              width: 60,
                              height: 60,
                            ),
                            const SizedBox(height: 5),
                            const Text('hotdog'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 310,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Open restaurants',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Home01nvpage(),
                            ),
                          );
                        },
                        child: const Row(
                          children: [
                            Text(
                              'See All',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Muhusrestaurant(),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        'assets/1000045560.jpg',
                        height: 155,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Text(
                        'muhus restaurant',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        'burger - sandwich - hotdogs',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    children: [
                      Icon(Icons.star),
                      Text('4.7'),
                      SizedBox(width: 30),
                      Icon(Icons.pedal_bike_outlined),
                      SizedBox(width: 5),
                      Text('free'),
                      SizedBox(width: 30),
                      Icon(Icons.punch_clock),
                      SizedBox(width: 5),
                      Text('20-min '),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 300,
              width: 380,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Brestaurant(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        'assets/1000045561.jpg',
                        height: 170,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Text(
                          'b restaurant',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'burger - pizza - hotdogs',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
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
            ),
            const SizedBox(height: 5),
            Container(
              height: 300,
              width: 380,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Crestaurant(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        'assets/1000045562.jpg',
                        height: 170,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Text(
                          'c restaurant',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'burger - pizza - hotdogs',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
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
            ),
          ],
        ),
      ),
    );
  }
}
