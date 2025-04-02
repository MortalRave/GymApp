import 'package:flutter/material.dart';
import 'dart:async';


class StopwatchScreen extends StatefulWidget {
  const StopwatchScreen({Key? key}) : super(key: key);

  @override
  _StopwatchScreenState createState() => _StopwatchScreenState();
}

class _StopwatchScreenState extends State<StopwatchScreen>{

  Timer? timer;
  String digitSeconds = "00", digitMinutes = "00", digitHours = "00";
  int seconds = 0, minutes = 0, hours = 0;

  void startStopwatch() {
    timer = Timer.periodic(Duration(seconds: 1), (timer){
      int localSeconds = seconds + 1;
      int localMinutes = minutes;
      int localHours = hours;

      if (localSeconds > 59) {
        if (localMinutes > 59) {
          localHours++;
          localMinutes = 0;
        }
        else{
          localMinutes++;
          localSeconds = 0;
        }
      }

      setState(() {
        seconds = localSeconds;
        minutes = localMinutes;
        hours = localHours;

        digitSeconds = (seconds < 10) ? "0$seconds" : "$seconds";
        digitMinutes = (minutes < 10) ? "0$minutes" : "$minutes";
      });

    });
  }

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
              "$digitHours:$digitMinutes:$digitSeconds",
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
                  onPressed: () {
                    startStopwatch();
                  },
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