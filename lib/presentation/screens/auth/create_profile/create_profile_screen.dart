import 'package:flutter/material.dart';
import 'package:loby/presentation/screens/auth/create_profile/widgets/create_profile_card.dart';
import 'package:sizer/sizer.dart';

import '../../../widgets/background_image.dart';


class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({Key? key}) : super(key: key);

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
                child: CreateProfileCard(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
