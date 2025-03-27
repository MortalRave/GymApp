import 'package:flutter/material.dart';
import 'package:gymapp/screens/home_screen.dart';

void main() {
  runApp(GymApp());
}

class GymApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GymApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: HomeScreen(),
    );
  }
}