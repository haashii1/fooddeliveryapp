import 'package:flutter/material.dart';

import 'package:myproject_01/fooditemspages.dart/hotelowners.dart/hoteladdingpage02.dart';

class Hoteladdingpage01 extends StatelessWidget {
  const Hoteladdingpage01({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 100,
              width: 400,
              color: Colors.black,
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Add Your Restaurant',
                      style: TextStyle(fontSize: 34, color: Colors.white),
                    ),
                    Text(
                      'Please add deatails to get started',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Restaurant Name',
                    hintText: 'Enter your Restaurant name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 05,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Restaurant Email',
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 05,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Description',
                  hintText: 'Add Description',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 05,
            ),
           Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: ' hotel location',
                  hintText: 'Add location',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          
            
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(370, 50),
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Hoteladdingpage02()));
              },
              child: const Text('Next',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
