// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './fields.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Function onPressed;

  const Button({Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

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
      onPressed: () => onPressed,
      child: Text(
        buttonText,
      ),
    );
  }
}
