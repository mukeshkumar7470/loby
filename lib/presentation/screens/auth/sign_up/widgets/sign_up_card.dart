import 'package:flutter/material.dart';

import '../../../../../core/theme/colors.dart';

class SignUpCard extends StatefulWidget {
  const SignUpCard({Key? key}) : super(key: key);

  @override
  State<SignUpCard> createState() => _SignUpCardState();
}

class _SignUpCardState extends State<SignUpCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: loginCardBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft:  Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            )

      ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(35.00, 16.00, 35.00,16.00),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 16.00,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 16.00,
                ),
                Text("New User ?", style: TextStyle(fontSize: 14, color: quoteTileCallButton)),
                SizedBox(
                  width: double.infinity,
                  height: 16.00,
                ),
              ],
            ),
          ),
        ),
    );
  }
}
