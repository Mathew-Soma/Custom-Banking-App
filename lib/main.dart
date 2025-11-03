import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/screens/home/screen1.dart';
import 'package:flutter_application_1/src/presentation/screens/home/screenThree.dart';
import 'package:flutter_application_1/src/presentation/screens/home/screen_three.dart';
import 'package:flutter_application_1/src/presentation/screens/home/screen_two.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen_three()
    );
  }
}
