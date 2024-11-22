import 'package:flutter/material.dart';
import 'package:myproject_01/fs01.dart';
import 'package:myproject_01/splash.dart';

void main() {
  runApp(const MainApp()); 
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String,Widget Function(BuildContext)>{
        '/': (BuildContext context) => const Splash(),
        '/fs01':(BuildContext context)=>const Fs01(),
      },
    );
  }
}
