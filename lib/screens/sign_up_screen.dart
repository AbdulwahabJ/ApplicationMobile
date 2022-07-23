// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../Widgets.dart/app_icons.dart';
import '../Widgets.dart/buttons.dart';
import '../Widgets.dart/fields.dart';
import '../Widgets.dart/texts.dart';

class SignUpScreen extends StatelessWidget {
  static const screenRoute = '/signup_screen';
  final _auth = FirebaseAuth.instance;

  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3D4A53),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            BackIcon(),
            //
            LogInText(title: 'حساب جديد'),
            //
            BorderField(
              fieldTitle: 'الاسم',
              fieldHint: 'اكتب الاسم',
            ),
            BorderField(
              fieldTitle: 'الايميل',
              fieldHint: 'اكتب الايميل',
            ),
            BorderField(
              fieldTitle: 'كلمة المرور',
              fieldHint: 'اكتب كلمة المرور',
            ),
            BorderField(
              fieldTitle: 'تأكيد كلمة المرور',
              fieldHint: 'اعد كتابة كلمة المرور',
            ),
            SizedBox(
              height: 60,
            ),
            Center(
                child: Button(
              buttonText: 'تسجيل',
              onPressed: () {},
            )),
          ],
        ),
      ),
    );
  }
}
