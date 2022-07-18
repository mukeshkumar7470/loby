import 'package:flutter/material.dart';
import 'package:loby/core/theme/colors.dart';

import 'sign_in_with_apple_button.dart';
import 'sign_in_with_google_button.dart';
import 'create_new_account_button.dart';

class LoginCard extends StatefulWidget {
  const LoginCard({Key? key}) : super(key: key);

  @override
  State<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        margin: EdgeInsets.all(16.00),
        color: loginCardBackgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: textLightColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(35.00, 16.00, 35.00,16.00),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SignInWithApple(),
                SizedBox(
                  width: double.infinity,
                  height: 16.00,
                ),
                SignInWithGoogle(),
                SizedBox(
                  width: double.infinity,
                  height: 16.00,
                ),
                Text("New User ?", style: TextStyle(fontSize: 14, color: quoteTileCallButton)),
                SizedBox(
                  width: double.infinity,
                  height: 16.00,
                ),
                CreateNewAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
