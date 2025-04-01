import 'package:flutter/material.dart';
import 'package:gymapp/widgets/main_button.dart';
import 'package:gymapp/screens/stopwatch_screen.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [const Color.fromARGB(255, 27, 27, 27), const Color.fromARGB(255, 39, 39, 39)]
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text(
              'GymApp',
              style: TextStyle(
                fontFamily: 'Boldonse-Regular',
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                decoration: TextDecoration.none,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 80),
            MainButton(
              text: 'Start workout',
               onPressed: (){}
               ),
            SizedBox(height: 20),
            MainButton(
              text: 'Workout history',
               onPressed: (){}
               ),
            SizedBox(height: 20),
            MainButton(
              text: 'Your plans',
               onPressed: (){}
               ),
            SizedBox(height: 20),
            MainButton(
              text: 'Stopwatch',
               onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StopwatchScreen())
                );
               },
              ),
            SizedBox(height: 20),
            MainButton(
              text: 'Timer',
               onPressed: (){}
               ),
          ],
        ),
      );
  }
}