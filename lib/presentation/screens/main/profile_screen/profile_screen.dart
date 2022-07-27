import 'package:flutter/material.dart';
import 'package:loby/presentation/screens/main/profile_screen/profile_verification_screen.dart';
import 'package:loby/presentation/screens/main/profile_screen/wallet/my_wallet_screen.dart';
import 'package:loby/presentation/screens/main/profile_screen/widgets/profile_options.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/colors.dart';
import '../home_screen/disputes/disputes_screen.dart';
import 'feedback_screen.dart';
import 'my_listing/my_listing_screen.dart';
import 'my_order/my_order_screen.dart';

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
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green[500],
                      radius: 35,
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: CircleAvatar(
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
                              style: textTheme.subtitle1?.copyWith(
                                  fontSize: 18.sp, color: textWhiteColor),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              "View Profile",
                              style: textTheme.subtitle2?.copyWith(
                                  fontSize: 10.sp, color: textWhiteColor),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: ListView(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileOptionsWidget(
                          name: "Wallet",
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const MyWalletScreen()));
                          }),
                      ProfileOptionsWidget(
                          name: "My Listings",
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const MyListingScreen()));
                          }),
                      ProfileOptionsWidget(
                          name: "My Orders",
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const MyOrderScreen()));
                          }),
                      ProfileOptionsWidget(
                          name: "My Disputes",
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const DisputeScreen()));
                          }),
                      ProfileOptionsWidget(
                          name: "Profile Verification",
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ProfileVerificationScreen()));
                          }),
                      ProfileOptionsWidget(
                          name: "Feedback/Suggestions",
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const FeedbackScreen()));
                          }),
                      ProfileOptionsWidget(
                          name: "App Setting",
                          onTap: () {
                            debugPrint('check data');
                          }),
                      ProfileOptionsWidget(
                          name: "Terms & Conditions",
                          onTap: () {
                            debugPrint('check data');
                          }),
                      ProfileOptionsWidget(
                          name: "Logout",
                          onTap: () {
                            debugPrint('check data');
                          }),
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Version Beta 1.0',
                textAlign: TextAlign.center,
                style: textTheme.subtitle2?.copyWith(color: textWhiteColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
