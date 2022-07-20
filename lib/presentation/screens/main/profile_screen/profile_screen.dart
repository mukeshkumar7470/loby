import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/colors.dart';
import '../../../widgets/body_padding_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: backgroundColor),
            child: Padding(
              padding: EdgeInsets.all(2.h),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  child: SizedBox(
                    height: 9.h,
                    child: Image.asset(
                      "assets/icons/app_icon.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green[500],
                    radius: 35,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"), //NetworkImage
                        radius: 35,
                      ),
                    ), //CircleAvatar
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mukesh Kumar Patel",
                            style: textTheme.subtitle1
                                ?.copyWith(fontSize: 18.sp, color: textWhiteColor),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            "View Profile",
                            style: textTheme.subtitle2
                                ?.copyWith(fontSize: 10.sp, color: textWhiteColor),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProfileOptions(textTheme, 'Wallet'),
              _buildProfileOptions(textTheme, 'My Listings'),
              _buildProfileOptions(textTheme, 'My Orders'),
              _buildProfileOptions(textTheme, 'Feedback/Suggestions'),
              _buildProfileOptions(textTheme, 'Profile Verification'),
              _buildProfileOptions(textTheme, 'Terms & Conditions'),
              _buildProfileOptions(textTheme, 'Logout'),
            ],
          ),
          SizedBox(height: 45),
        ],
      ),
    );
  }

  _buildProfileOptions(TextTheme textTheme, String name) {
    return GestureDetector(
      onTap: (){
        print("Container $name");
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(25, 25, 12, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              name,
              style: textTheme.headline1
                  ?.copyWith(fontSize: 14.sp, color: textWhiteColor),
            )
          ],
        ),
      ),
    );
  }
}
