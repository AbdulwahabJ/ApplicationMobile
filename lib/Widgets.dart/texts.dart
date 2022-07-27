// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_const

import 'package:flutter/material.dart';

import '../screens/forgetpasswoed_screen.dart';
import '../screens/sign_up_screen.dart';

class LanguageText extends StatelessWidget {
  const LanguageText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end, //.........
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              textStyle: const TextStyle(
                fontSize: 20,
              ),
              // backgroundColor: Colors.white,
            ),
            onPressed: () {},
            child: const Text('EN'),
          ),
        ),
      ],
    );
  }
}

class LogInText extends StatelessWidget {
  final String title;
  const LogInText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(18.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: (20),
              fontFamily: 'cairo',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class ForgetPasswordText extends StatelessWidget {
  const ForgetPasswordText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 60.0),
          child: TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              textStyle: const TextStyle(
                fontSize: 13,
                fontFamily: 'cairo',
                fontWeight: FontWeight.bold,
              ),
              // backgroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, ForgetPasswordScreen.screenRoute);
            },
            child: const Text(
              'نسيت كلمة المرور ؟',
            ),
          ),
        ),
      ],
    );
  }
}

class NewAccountText extends StatelessWidget {
  final String text;
  const NewAccountText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              textStyle: const TextStyle(
                fontSize: 18,
                fontFamily: 'cairo',
              ),
              // backgroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, SignUpScreen.screenRoute);
            },
            child: Text(
              text,
            ),
          ),
        ),
      ],
    );
  }
}
