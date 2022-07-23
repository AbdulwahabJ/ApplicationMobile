// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Widgets.dart/app_icons.dart';
import '../Widgets.dart/buttons.dart';
import '../Widgets.dart/fields.dart';
import '../Widgets.dart/texts.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const screenRoute = '/forget_password_screen';

  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color(0xff3D4A53),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              BackIcon(),
              //
              SizedBox(
                height: 80,
              ),
              //
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'إعادة تعيين كلمة المرور',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontFamily: 'cairo',
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'سيتم ارسال رابط على الايميل لأعادة تعيين كلمة المرور',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: 'cairo',
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //
              BorderField(
                fieldTitle: 'الايميل',
                fieldHint: 'اكتب الايميل لارسال الرابط',
              ),
              //
              SizedBox(
                height: 80,
              ),
              //
              Center(child: Button(buttonText: 'ارسال', onPressed: () {  },)),
            ],
          ),
        ),
      ),
    );
  }
}
