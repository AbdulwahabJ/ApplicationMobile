// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_report/screens/sign_in_screen.dart';
import 'screens/forgetpasswoed_screen.dart';
import 'screens/sign_up_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("fa", "IR"),
        Locale('ar', 'AE'),
      ],
      // home: ForgetPasswordScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => SignInScreen(),
        SignInScreen.screenRoute: (ctx) => SignInScreen(),
        SignUpScreen.screenRoute: (ctx) => SignUpScreen(),
        ForgetPasswordScreen.screenRoute: (ctx) => ForgetPasswordScreen(),
      },
    );
  }
}
