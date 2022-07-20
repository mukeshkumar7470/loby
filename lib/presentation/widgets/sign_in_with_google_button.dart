import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/theme/colors.dart';
import '../screens/main/main_screen.dart';

class SignInWithGoogle extends StatefulWidget {
  final Color color;
  final String name;
  const SignInWithGoogle({required this.color, required this.name});

  @override
  State<SignInWithGoogle> createState() => _SignInWithGoogleState();
}

class _SignInWithGoogleState extends State<SignInWithGoogle> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.h),
                  )
              ),
            backgroundColor: MaterialStateProperty.all<Color>(widget.color),
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MainScreen()));
          },
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(widget.name,
                style: TextStyle(fontSize: 14, color: primaryTextColor)),
          )),
    );
  }
}
