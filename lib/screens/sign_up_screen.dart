// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_catches, unused_local_variable, use_build_context_synchronously, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../Widgets.dart/app_icons.dart';
import '../Widgets.dart/buttons.dart';
import '../Widgets.dart/fields.dart';
import '../Widgets.dart/texts.dart';
import 'forgetpasswoed_screen.dart';
import 'home_screen.dart';

class SignUpScreen extends StatelessWidget {
  static const screenRoute = '/signup_screen';
  final _auth = FirebaseAuth.instance;

  SignUpScreen({Key? key}) : super(key: key);
  late String name;
  late String email;
  late String password;
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
                onChanged: (value) {
                  name = value;
                }),
//
            Padding(
              padding: const EdgeInsets.only(
                right: 25.0,
                top: 20,
                bottom: 10,
              ),
              child: Text(
                'الايميل',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'cairo',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                //
                keyboardType: TextInputType.emailAddress,
                //
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  //
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 10,
                  ),
                  //fromARGB(255, 232, 238, 240)
                  fillColor: Color.fromARGB(255, 232, 238, 240),
                  filled: true,
                  //
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  //
                  hintText: 'اكتب الايميل',
                ),
                onChanged: (value) {
                  email = value;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 25.0,
                top: 20,
                bottom: 10,
              ),
              child: Text(
                'كلمة المرور',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'cairo',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                //
                keyboardType: TextInputType.emailAddress,
                //
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  //
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 10,
                  ),
                  //fromARGB(255, 232, 238, 240)
                  fillColor: Color.fromARGB(255, 232, 238, 240),
                  filled: true,
                  //
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  //
                  hintText: 'اكتب كلمة المرور',
                ),
                onChanged: (value) {
                  password = value;
                },
              ),
            ),

            // BorderField(
            //     fieldTitle: 'الاسم',
            //     fieldHint: 'اكتب الاسم',
            //     onChanged: (value) {
            //       name = value;
            //     }),
            // BorderField(
            //   fieldTitle: 'الايميل',
            //   fieldHint: 'اكتب الايميل',
            //   onChanged: (value) {
            //     email = value;
            //   },
            // ),
            // BorderField(
            //     fieldTitle: 'كلمة المرور',
            //     fieldHint: 'اكتب كلمة المرور',
            //     onChanged: (value) {
            //       password = value;
            //     }),
            BorderField(
              fieldTitle: 'تأكيد كلمة المرور',
              fieldHint: 'اعد كتابة كلمة المرور',
              onChanged: (value) {},
            ),

            SizedBox(
              height: 60,
            ),

            Center(
              child: ElevatedButton(
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
                onPressed: () async {
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    Navigator.pushNamed(context, HomeScreen.screenRoute);
                  } catch (e) {
                    print(e);
                  }
                },
                child: Text(
                  'تسجيل',
                ),
              ),
            ),
            // Center(
            //   child: Button(
            //     buttonText: 'تسجيل',
            //     onPressed: () async {
            //       try {
            //         final newUser = await _auth.createUserWithEmailAndPassword(
            //             email: email, password: password);
            //         Navigator.pushNamed(context, HomeScreen.screenRoute);
            //       } catch (e) {
            //         print(e);
            //       }
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
