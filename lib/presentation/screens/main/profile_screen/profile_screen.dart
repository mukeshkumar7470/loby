import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loby/presentation/screens/main/profile_screen/widgets/profile_options.dart';
import 'package:loby/presentation/screens/my_order/my_order_screen.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/colors.dart';
import '../../../widgets/body_padding_widget.dart';
import '../../my_listing/my_listing_screen.dart';
import '../../wallet/my_wallet_screen.dart';

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
                        backgroundImage: AssetImage('assets/images/img.png'),
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
              ProfileOptionsWidget(name: "Wallet", onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyWalletScreen()));
              }),
              ProfileOptionsWidget(name: "My Listings", onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyListingScreen()));
              }),
              ProfileOptionsWidget(name: "My Orders", onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyOrderScreen()));
              }),
              ProfileOptionsWidget(name: "Feedback/Suggestions", onTap: () {
                debugPrint('check data');
              }),
              ProfileOptionsWidget(name: "Profile Verification", onTap: () {
                debugPrint('check data');
              }),
              ProfileOptionsWidget(name: "Terms & Conditions", onTap: () {
                debugPrint('check data');
              }),
              ProfileOptionsWidget(name: "Logout", onTap: () {
                debugPrint('check data');
              }),
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
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const MyOrderScreen()));
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
