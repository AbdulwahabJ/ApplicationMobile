// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, dead_code, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Widgets.dart/app_icons.dart';

class BottomBorderfield extends StatelessWidget {
  late Function onChanged;
  // late String email;
  // late String password;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LogInIcons(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: Column(
              children: [
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
                    // email = value;
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
                    // password = value;
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BorderField extends StatelessWidget {
  final String fieldTitle;
  final String? fieldHint;

  final Function onChanged;

  BorderField({
    Key? key,
    required this.fieldTitle,
    this.fieldHint,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 25.0,
            top: 20,
            bottom: 10,
          ),
          child: Text(
            fieldTitle,
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
              hintText: fieldHint,
            ),
            onChanged: (value) => onChanged,
          ),
        ),
      ],
    );
  }
}
