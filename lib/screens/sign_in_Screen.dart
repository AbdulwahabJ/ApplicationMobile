// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, implementation_imports, unnecessary_import, must_be_immutable, unused_field, use_build_context_synchronously, unused_local_variable, avoid_print, unnecessary_null_comparison

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

import '../Widgets.dart/app_icons.dart';
import '../Widgets.dart/buttons.dart';
import '../Widgets.dart/texts.dart';
import '../Widgets.dart/fields.dart';
import '../provider/google_signin.dart';
import 'home_screen.dart';

class SignInScreen extends StatefulWidget {
  static const screenRoute = '/signin_screen';

  SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _auth = FirebaseAuth.instance;

  late String email;
  late String password;
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

              //..
              CircleAvatar(
                radius: 65.0,
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
                    fontSize: 25,
                    fontFamily: 'cairo',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              LogInText(title: 'تسجيل الدخول'),
              // BottomBorderfield(),
              Row(
                children: [
                  LogInIcons(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60.0),
                      child: Column(children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 3,
                                color: Colors.white,
                              ),
                            ),
                            labelText: 'الايميل',
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'cairo',
                            ),
                          ),
                          onChanged: (value) {
                            email = value;
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          obscureText: true, // for hide the password..
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 2.3,
                                color: Colors.white,
                              ),
                            ),
                            labelText: 'كلمة المرور',
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'cairo',
                            ),
                          ),
                          onChanged: (value) {
                            password = value;
                          },
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
              ForgetPasswordText(),
              //..

              //..
              // Button(
              //   buttonText: 'تسجيل الدخول',
              //   onPressed: () {
              //     signIn();
              //   },
              // ),
              SizedBox(
                height: 20,
              ),
              //
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  minimumSize: Size(255, 50),
                  primary: Color.fromARGB(255, 40, 172, 141),
                  onPrimary: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 22,
                    fontFamily: 'tajawal',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () async {
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null) {
                      Navigator.pushNamed(context, HomeScreen.screenRoute);
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                child: Text(
                  'تسجيل الدخول',
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    minimumSize: Size(100, 45),
                    primary: Color.fromARGB(242, 255, 255, 255),
                    onPrimary: Color.fromARGB(248, 211, 64, 69),
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'tajawal',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    provider.googleLogin();
                  },
                  label: Text(
                    'الدخول باستخدام Google',
                  ),
                  icon: FaIcon(
                    FontAwesomeIcons.google,
                    color: Color.fromARGB(248, 211, 64, 69),
                    size: 28,
                  ),
                ),
              ),
              NewAccountText(text: 'حساب جديد'),
            ],
          ),
        ),
      ),
    );
  }
}
