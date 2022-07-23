import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loby/presentation/screens/other_user_profile/widgets/profile_header.dart';
import 'package:loby/presentation/screens/other_user_profile/widgets/user_info.dart';
import 'package:sizer/sizer.dart';

import '../../../core/theme/colors.dart';
import '../../widgets/custom_button.dart';

class OtherUserProfileScreen extends StatefulWidget {
  const OtherUserProfileScreen({Key? key}) : super(key: key);

  @override
  State<OtherUserProfileScreen> createState() => _OtherUserProfileScreenState();
}

class _OtherUserProfileScreenState extends State<OtherUserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: backgroundColor2,
        body: body(),
      ),
    );
  }

  Widget body() {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ProfileHeader(
            avatar: AssetImage('assets/images/img.png'),
            title: "StringConst.DEEPAK_SHARMA",
            subtitle: "StringConst.WEBADDICTED",
          ),
          SizedBox(height: 10.0),
          UserInfo(),
        ],
      ),
    );
  }
}

