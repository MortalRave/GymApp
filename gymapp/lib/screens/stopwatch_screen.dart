import 'package:flutter/material.dart';

class StopwatchScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [const Color.fromARGB(255, 27, 27, 27), const Color.fromARGB(255, 39, 39, 39)]
        )
      ),
      child: Column(
        children: [
          SizedBox(height: 50),
          Center(
            child: Text(
              "Stopwatch",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 40,
                decoration: TextDecoration.none,
              )
            ),
          ),
          SizedBox(height: 80),
          Center(
            child: Text(
              "00:00:00",
              style: TextStyle(
                color: Colors.white,
                fontSize: 70,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              )
            )
          ),
          SizedBox(height: 40),
          Container(
            height: 400,
            decoration: BoxDecoration(
              color: const Color.fromARGB(107, 255, 255, 255),
              borderRadius: BorderRadius.circular(20),
            )
          ),
          SizedBox(height: 40),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  child: Text(
                    "Start",
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 20),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/white_flag.png',
                  width: 24,
                  height: 24),
                ),
              SizedBox(width: 20),
              Expanded(
                child: ElevatedButton(
                  child: Text(
                    "Stop",
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ]
      ),
      );
  }
}