import 'package:flutter/material.dart';

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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Sign in with Apple",
                style: TextStyle(fontSize: 14, color: primaryTextColor)),
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  )
              ),
            backgroundColor: MaterialStateProperty.all<Color>(quoteTileCallButton),
          ),
          onPressed: () => null),
    );
  }
}
