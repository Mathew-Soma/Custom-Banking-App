import 'package:DemoApp/src/presentation/screens/home/screen1.dart';
import 'package:DemoApp/src/presentation/screens/home/screen_three.dart';
import 'package:DemoApp/src/presentation/screens/home/screen_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
  
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen_one()
    );
  }
}
