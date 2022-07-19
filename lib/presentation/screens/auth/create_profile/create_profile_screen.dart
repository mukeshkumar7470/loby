import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loby/presentation/screens/auth/create_profile/widgets/create_profile_card.dart';
import 'package:loby/presentation/screens/auth/sign_up/widgets/sign_up_card.dart';

import '../../../widgets/background_image.dart';


class CreateProfileScreen extends StatefulWidget {
  CreateProfileScreen({Key? key}) : super(key: key);

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
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
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                height: 64.00,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CreateProfileCard(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
