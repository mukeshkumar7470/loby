import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loby/presentation/screens/auth/sign_up/widgets/sign_up_card.dart';

import '../../../widgets/background_image.dart';


class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  Widget body() {
    return Stack(
      children: [
        BackgroundImage(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 64.00,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SignUpCard(),
            ),
          ],
        )
      ],
    );
  }
}
