// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  const Button({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        minimumSize: Size(255, 50),
        primary: Color.fromARGB(255, 1, 170, 130),
        onPrimary: Colors.white,
        textStyle: TextStyle(
          fontSize: 22,
          fontFamily: 'tajawal',
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        // Respond to button press
      },
      child: Text(
        buttonText,
      ),
    );
  }
}
