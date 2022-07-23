// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, implementation_imports, unnecessary_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../Widgets.dart/buttons.dart';
import '../Widgets.dart/texts.dart';
import '../Widgets.dart/fields.dart';

class SignInScreen extends StatelessWidget {
  static const screenRoute = '/signin_screen';

  SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3D4A53),
      //body..
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              LanguageText(),
              //..
              SizedBox(
                height: 20,
              ),
              //..
              CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
              ),
              //..
              SizedBox(
                height: 20,
              ),
              //..
              Center(
                child: Text(
                  'اسم التطبيق',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontFamily: 'cairo',
                  ),
                ),
              ),
              LogInText(title: 'تسجيل الدخول'),
              BottomBorderfield(),
              ForgetPasswordText(),
              //..
              SizedBox(
                height: 40,
              ),
              //..
              Button(
                buttonText: 'تسجيل الدخول',
                onPressed: () {},
              ),
              NewAccountText(text: 'حساب جديد'),
            ],
          ),
        ),
      ),
    );
  }
}
