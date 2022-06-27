// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff7190a6),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: const TextStyle(
                          fontSize: 17,
                        ),
                        // backgroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: const Text('EN'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 70.0,
                    backgroundColor: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                      left: 200,
                      bottom: 15,
                    ),
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: (25),
                        fontFamily: 'cairo',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 50,
                      left: 50,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        labelText: 'الايميل',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontFamily: 'cairo',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 50,
                      left: 50,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        labelText: 'كلمة المرور',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.only(top: 10, right: 200),
                      primary: Colors.white,
                      textStyle: const TextStyle(
                        fontSize: 13,
                        fontFamily: 'cairo',
                      ),
                      // backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text('نسيت كلمة المرور ؟'),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(265, 50),
                      primary: Color(0xff158E6A),
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
                      'تسجيل الدخول',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: const TextStyle(
                          fontSize: 17,
                          fontFamily: 'cairo',
                        ),
                        // backgroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: const Text('حساب جديد'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
