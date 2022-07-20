import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/theme/colors.dart';

class SignInWithApple extends StatefulWidget {
  const SignInWithApple({Key? key}) : super(key: key);

  @override
  State<SignInWithApple> createState() => _SignInWithAppleState();
}

class _SignInWithAppleState extends State<SignInWithApple> {
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
            backgroundColor: MaterialStateProperty.all<Color>(quoteTileCallButton),
          ),
          onPressed: () => null,
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Sign in with Apple",
                style: TextStyle(fontSize: 14, color: primaryTextColor)),
          )),
    );
  }
}
