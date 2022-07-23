import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../core/theme/colors.dart';
import '../../widgets/custom_button.dart';

class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({Key? key}) : super(key: key);

  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor2,
        body: body(),
      ),
    );
  }

  Widget body() {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: backgroundColor),
            child: Padding(
              padding: EdgeInsets.all(2.h),
              child: Align(
                alignment: Alignment.center,
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
          Container(
            margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 7.h,
                  height: 7.h,
                  child: MaterialButton(
                    shape: const CircleBorder(),
                    color: backgroundColor,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: SvgPicture.asset(
                      'assets/icons/back_icon.svg',
                      color: whiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Card(
                    color: backgroundColor,
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          color: primaryColor1,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 1.h),
                          child: Text('Balance',
                              textAlign: TextAlign.center,
                              style: textTheme.headline2
                                  ?.copyWith(color: iconTintColor)),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: Card(
                      color: backgroundColor,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Column(
                            children: [
                              Text('₹ 25,000',
                                  textAlign: TextAlign.center,
                                  style: textTheme.headlineLarge
                                      ?.copyWith(color: primaryColor1)),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.35,
                                      child: CustomButton(
                                        color: primaryColor3,
                                        name: "Add Funds",
                                        onTap: () {
                                          debugPrint('click chat');
                                        },
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.35,
                                      child: CustomButton(
                                        color: primaryColor3,
                                        name: "Withdraw",
                                        onTap: () {
                                          debugPrint('click chat');
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              )),
          const SizedBox(height: 8.0),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Card(
                    color: backgroundColor,
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          color: primaryColor1,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 1.h),
                          child: Text('Loby Coins',
                              textAlign: TextAlign.center,
                              style: textTheme.headline2
                                  ?.copyWith(color: iconTintColor)),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: Card(
                      color: backgroundColor,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Column(
                            children: [
                              Text('500',
                                  textAlign: TextAlign.center,
                                  style: textTheme.headlineLarge
                                      ?.copyWith(color: primaryColor1)),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                                child: CustomButton(
                                  color: primaryColor3,
                                  name: "Redeem",
                                  onTap: () {
                                    debugPrint('click chat');
                                  },
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
