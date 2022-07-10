// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../screens/sign_in_Screen.dart';

class LogInIcons extends StatelessWidget {
  const LogInIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.account_circle_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          const SizedBox(
            height: 65,
          ),
          Icon(
            Icons.vpn_key_sharp,
            color: Colors.white,
            size: 30.0,
          ),
        ],
      ),
    );
  }
}

class BackIcon extends StatelessWidget {
  const BackIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 40.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            color: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, SignInScreen.screenRoute);
            },
          ),
        ),
      ],
    );
  }
}
