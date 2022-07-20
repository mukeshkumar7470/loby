import 'package:flutter/material.dart';
import 'package:loby/presentation/screens/auth/sign_up/widgets/sign_up_card.dart';
import 'package:sizer/sizer.dart';

import '../../../widgets/background_image.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
        const BackgroundImage(),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                height: 64.h,
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: SignUpCard(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
