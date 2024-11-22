import 'package:flutter/material.dart';

class Home01nvpage extends StatelessWidget {
  const Home01nvpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Row(
          mainAxisSize: MainAxisSize.min, // Ensures the Row takes minimum width
          children: [
            Text(
              'All Restaurants',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(width: 5), // Adjust space as desired between title and icon
            Icon(Icons.holiday_village, color: Colors.black),
          ],
        ),
        titleSpacing: 0, // Removes spacing between the leading widget and title
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 1),
              Container(
                height: 300,
                width: 380,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 253, 255, 254),
                  borderRadius: BorderRadius.circular(8.0),
                ),
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
                          'sandwich - pizza - mandhi',
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
              const SizedBox(height: 5),
              Container(
                height: 300,
                width: 380,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 251, 253),
                  borderRadius: BorderRadius.circular(8.0),
                ),
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
              const SizedBox(height: 5),
              Container(
                height: 300,
                width: 380,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(8.0),
                ),
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
                          'sandwich - pizza - mandhi',
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
            ],
          ),
        ),
      ),
    );
  }
}
