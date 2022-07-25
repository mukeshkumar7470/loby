import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/colors.dart';

class ProfileVerificationScreen extends StatefulWidget {
  const ProfileVerificationScreen({Key? key}) : super(key: key);

  @override
  State<ProfileVerificationScreen> createState() => _ProfileVerificationScreenState();
}

class _ProfileVerificationScreenState extends State<ProfileVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 8.0),
                      child: Text(
                        'Create New Listing',
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.headlineLarge
                            ?.copyWith(color: textWhiteColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                  textAlign: TextAlign.start,
                  "For Accounts That Cannot Change Email Address : Sellers must provide the email address to the buyers and make sure they gain full access of the email such as secret questions etc.For Accounts That Can Change Email Address : Sellers must assist buyers to change the email address and provide the proofPayment will be put on hold if seller did not submit proof for (1) or (2). If seller fails to provide proof, the payment will be deducted to refund buyer when there is a dispute.You must be the main owner of the account(s) you intend to sell.Visit Accounts Service Rules and Descriptions for more info.",
                  style:
                  textTheme.headline3?.copyWith(color: textLightColor)),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                  textAlign: TextAlign.start,
                  "Title",
                  style: textTheme.headline3?.copyWith(color: textLightColor)),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                  textAlign: TextAlign.start,
                  'Description',
                  style:
                  textTheme.headline3?.copyWith(color: textLightColor)),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                  textAlign: TextAlign.start,
                  'Price',
                  style:
                  textTheme.headline3?.copyWith(color: textLightColor)),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text: "‘Loby Protection’",
                      style: textTheme.headline3
                          ?.copyWith(fontSize: 13.0, color: primaryColor1),
                    ),
                    TextSpan(
                        text: " Insurance",
                        style: textTheme.headline3
                            ?.copyWith(fontSize: 13.0, color: textLightColor)),
                  ])),
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                  textAlign: TextAlign.start,
                  'Estimated Delivery Time (Hours)',
                  style:
                  textTheme.headline3?.copyWith(color: textLightColor)),
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
