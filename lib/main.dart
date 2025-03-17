import 'package:flutter/material.dart';

void main() {
  runApp(GymApp());
}

class GymApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text(
              "GymApp",
              style: TextStyle(
                color: Colors.white,
              )
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 12, 85, 164),
        ),
        
        )
      );
  }
}