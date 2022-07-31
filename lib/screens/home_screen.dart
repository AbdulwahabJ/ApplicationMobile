// ignore_for_file: unused_field, unused_local_variable, empty_catches, avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../provider/google_signin.dart';

class HomeScreen extends StatefulWidget {
  static const screenRoute = '/home_screen';

  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;

  late User signedInUser;

  @override
  initState() {
    super.initState();
    getCurrentUser();
    // Add listeners to this class
  }

  void getCurrentUser() {
    //
    try {
      final user = _auth.currentUser;
      if (user != null) {
        signedInUser = user;
        print(signedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xff3D4A53),
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(child: CircularProgressIndicator());
            else if (snapshot.hasError) {
              return Center(child: Text('went wrong'));
            } else if (snapshot.hasError) {
              return Center(child: Text('there is data'));
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'home',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
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
                        final provider = Provider.of<GoogleSignInProvider>(
                            context,
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
                ],
              );
            }
          },
        ),
      );
}
