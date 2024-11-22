import 'package:flutter/material.dart';
import 'package:myproject_01/fs01.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Fs01()));
    });
    return  Scaffold(
backgroundColor: Colors.white,
body: Center(
  child: Image.asset('assets/Screenshot 2024-10-07 104051.png'),
),

    );
  }
}