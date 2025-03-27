import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MainButton({
    Key? key,
    required this.text,
    required this.onPressed,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          horizontal: 20, 
          vertical: 15
          ),
        textStyle: const TextStyle(
          fontSize: 25, 
          fontWeight: FontWeight.bold
          ),
          side: BorderSide(
            color: const Color.fromARGB(255, 172, 172, 172),
            width: 1.5,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
  }
}