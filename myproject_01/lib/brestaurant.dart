import 'package:flutter/material.dart';
import 'package:myproject_01/home.dart';

class Brestaurant extends StatelessWidget {
  Brestaurant({super.key});
  final List<String> items = [
    'sandwich',
    'pizza',
    'burger',
    'hotdog',
  ];

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
                builder: (context) => Home(),
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
            icon: const Icon(Icons.menu), // Corrected line with const
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
                      'assets/1000045561.jpg',
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    children: [
                      Text(
                        ' b restaurant',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    children: [
                      Text(''' msuhsdnsdnmymndfjjfdjfhjhkjhjbabcmsuhsdnsdhhhgg
 msuhsdnsdnmymndfjjfdjfhjhkjhjbabcmsuhsdnsdhhhgg
 msuhsdnsdnmymndfjjfdjfhjhkjhjbabcmsuhsdnsdhhhgg'''),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
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
            const SizedBox(height: 05),
            SizedBox(
              height: 50, // Set height for the horizontal ListView
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: EdgeInsets.all(8),
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Container(
                      width: 100,
                      // Set a fixed width for the card
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      alignment: Alignment.center,
                      child: Text(items[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
