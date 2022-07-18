import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/login_card.dart';
import '../../../widgets/background_image.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
        Align(
          alignment: Alignment.center,
          child: Container(
            child: SizedBox(
              height: 64.0,
              child: Image.asset(
                "assets/icons/app_icon.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: LoginCard(),
            ),
          ],
        )
      ],
    );
  }
}
