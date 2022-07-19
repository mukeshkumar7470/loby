import 'package:flutter/material.dart';

import '../../../../../core/theme/colors.dart';
import '../../../main/main_screen.dart';

class SignInWithGoogle extends StatefulWidget {
  const SignInWithGoogle({Key? key}) : super(key: key);

  @override
  State<SignInWithGoogle> createState() => _SignInWithGoogleState();
}

class _SignInWithGoogleState extends State<SignInWithGoogle> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Sign in with Google",
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
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainScreen()));
          }),
    );
  }
}
