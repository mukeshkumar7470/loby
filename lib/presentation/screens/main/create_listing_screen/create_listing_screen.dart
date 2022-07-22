import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/colors.dart';
import '../../../widgets/Custom_Checkbox.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/drop_down.dart';

class CreateListingScreen extends StatefulWidget {
  const CreateListingScreen({Key? key}) : super(key: key);

  @override
  State<CreateListingScreen> createState() => _CreateListingScreenState();
}

class _CreateListingScreenState extends State<CreateListingScreen> {
  bool isChecked = false;

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
          _buildSearchField(textTheme, 'Select Category'),
          const SizedBox(height: 16.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                  textAlign: TextAlign.start,
                  "Disclaimer",
                  style: textTheme.headline3?.copyWith(color: textWhiteColor)),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Expanded(
                child: Text(
                    textAlign: TextAlign.start,
                    "For Accounts That Cannot Change Email Address : Sellers must provide the email address to the buyers and make sure they gain full access of the email such as secret questions etc.For Accounts That Can Change Email Address : Sellers must assist buyers to change the email address and provide the proofPayment will be put on hold if seller did not submit proof for (1) or (2). If seller fails to provide proof, the payment will be deducted to refund buyer when there is a dispute.You must be the main owner of the account(s) you intend to sell.Visit Accounts Service Rules and Descriptions for more info.",
                    style:
                        textTheme.headline3?.copyWith(color: textLightColor)),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          _buildSearchField(textTheme, 'Select Game (Dropdown + Search'),
          const SizedBox(height: 16.0),
          _buildSearchField(textTheme, 'Select Service'),
          const SizedBox(height: 16.0),
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
          const SizedBox(height: 16.0),
          _buildTitleField(textTheme),
          const SizedBox(height: 16.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Expanded(
                child: Text(
                    textAlign: TextAlign.start,
                    "For safety reasons, sellers are not allowed to leave their personal contacts. All communications with the buyers can only be made using Loby chat. Any conversation outside Loby Chat will not be insured/covered by Loby Protection",
                    style:
                        textTheme.headline3?.copyWith(color: textLightColor)),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Expanded(
                child: Text(
                    textAlign: TextAlign.start,
                    'Description',
                    style:
                        textTheme.headline3?.copyWith(color: textLightColor)),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          _buildDescriptionTypeField(textTheme),
          const SizedBox(height: 16.0),
          _buildUploadField(textTheme),
          const SizedBox(height: 16.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Expanded(
                child: Text(
                    textAlign: TextAlign.start,
                    'Price',
                    style:
                        textTheme.headline3?.copyWith(color: textLightColor)),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          _buildPrice(textTheme),
          const SizedBox(height: 16.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Expanded(
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
                    ]))
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          _buildTermsCheckbox(textTheme, '7 Days Insurance', ''),
          const SizedBox(height: 16.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Expanded(
                child: Text(
                    textAlign: TextAlign.start,
                    'Estimated Delivery Time (Hours)',
                    style:
                        textTheme.headline3?.copyWith(color: textLightColor)),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding:
                EdgeInsets.only(left: 00, top: 00, right: 18.h, bottom: 00),
            child: Container(
              child: _buildSearchField(textTheme, 'Select'),
            ),
          ),
          const SizedBox(height: 16.0),
          _buildTermsCheckbox(textTheme,
              'I have read and agreed to all sellers policy and the ', 'Terms of Service.'),
          const SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.h),
            child: CustomButton(
              color: createProfileButtonColor,
              name: "Publish",
              textColor: textWhiteColor,
              onTap: () {
                debugPrint('click chat');
              },
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }

  _buildTermsCheckbox(TextTheme textTheme, String content, String textSpan) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Custom_Checkbox(
              isChecked: isChecked,
              onChange: (value) {
                isChecked = value;
              },
              backgroundColor: primaryColor1,
              borderColor: primaryColor1,
              icon: Icons.check,
              size: 22,
              iconSize: 16,
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: SizedBox(
                child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(children: [
                      TextSpan(
                        text: content,
                        style: textTheme.headline3
                            ?.copyWith(fontSize: 13.0, color: textLightColor),
                      ),
                      TextSpan(
                          text: textSpan,
                          style: textTheme.headline3
                              ?.copyWith(fontSize: 13.0, color: primaryColor2)),
                    ]))
              ),
            ),
          ],
        ));
  }

  _buildPrice(TextTheme textTheme) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Container(
                decoration: BoxDecoration(
                  color: textFieldColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextField(
                  style: textTheme.bodyText1?.copyWith(color: textWhiteColor),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(3.w),
                      child: SvgPicture.asset(
                        'assets/icons/doller_icon.svg',
                        color: iconWhiteColor,
                      ),
                    ),
                    border: InputBorder.none,
                    hintStyle: textTheme.subtitle1
                        ?.copyWith(fontSize: 18, color: iconTintColor),
                    hintText: 'Search',
                  ),
                ),
              ),
            ),
            const SizedBox(width: 2.0),
            Text(
              "per",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: textTheme.headline3
                  ?.copyWith(fontSize: 13.0, color: textLightColor),
            ),
            const SizedBox(width: 2.0),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: const MyDropDownWidget(),
            ),
          ],
        ));
  }

  _buildSearchField(TextTheme textTheme, String name) {
    return const Padding(
        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
        child: MyDropDownWidget());
  }

  _buildTitleField(TextTheme textTheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
      child: Container(
          decoration: BoxDecoration(
            color: textFieldColor,
            border: Border.all(color: primaryColor1),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
              child: TextFormField(
                  style: textTheme.subtitle1
                      ?.copyWith(fontSize: 14, color: whiteColor),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: textTheme.subtitle1
                        ?.copyWith(fontSize: 14, color: textInputTitleColor),
                    hintText: 'Enter Title',
                  )))),
    );
  }

  _buildYoutubeLinkPasteField(TextTheme textTheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
      child: Container(
          decoration: BoxDecoration(
            color: textFieldColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
              child: TextFormField(
                  style: textTheme.subtitle1
                      ?.copyWith(fontSize: 14, color: whiteColor),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle:
                        textTheme.bodyText1?.copyWith(color: textWhiteColor),
                    hintText: 'Paste Youtube/Twitch Link',
                  )))),
    );
  }

  _buildUploadField(TextTheme textTheme) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
        child: DottedBorder(
          color: iconTintColor,
          borderType: BorderType.RRect,
          radius: const Radius.circular(24),
          strokeWidth: 1,
          child: Container(
              decoration: BoxDecoration(
                color: textFieldColor,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 16.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                          textAlign: TextAlign.start,
                          "Upload Images or Videos",
                          style: textTheme.headline3
                              ?.copyWith(color: textWhiteColor)),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // This is your Badge
                        padding: const EdgeInsets.all(8),
                        constraints:
                            BoxConstraints(minHeight: 12.h, minWidth: 36.w),
                        decoration: BoxDecoration(
                          // This controls the shadow
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 5,
                                color: Colors.black.withAlpha(50))
                          ],
                          borderRadius: BorderRadius.circular(12),
                          color:
                              iconWhiteColor, // This would be color of the Badge
                        ), // This is your Badge
                        child: Center(
                          // Here you can put whatever content you want inside your Badge
                          child: Text('1',
                              style: textTheme.headline1
                                  ?.copyWith(color: textLightColor)),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Container(
                        // This is your Badge
                        padding: const EdgeInsets.all(8),
                        constraints:
                            BoxConstraints(minHeight: 12.h, minWidth: 36.w),
                        decoration: BoxDecoration(
                          // This controls the shadow
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 5,
                                color: Colors.black.withAlpha(50))
                          ],
                          borderRadius: BorderRadius.circular(12),
                          color:
                              iconWhiteColor, // This would be color of the Badge
                        ), // This is your Badge
                        child: Center(
                          // Here you can put whatever content you want inside your Badge
                          child: Text('1',
                              style: textTheme.headline1
                                  ?.copyWith(color: textLightColor)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // This is your Badge
                        padding: const EdgeInsets.all(8),
                        constraints:
                            BoxConstraints(minHeight: 12.h, minWidth: 36.w),
                        decoration: BoxDecoration(
                          // This controls the shadow
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 5,
                                color: Colors.black.withAlpha(50))
                          ],
                          borderRadius: BorderRadius.circular(12),
                          color:
                              iconWhiteColor, // This would be color of the Badge
                        ), // This is your Badge
                        child: Center(
                          // Here you can put whatever content you want inside your Badge
                          child: Text('1',
                              style: textTheme.headline1
                                  ?.copyWith(color: textLightColor)),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Container(
                        // This is your Badge
                        padding: const EdgeInsets.all(8),
                        constraints:
                            BoxConstraints(minHeight: 12.h, minWidth: 36.w),
                        decoration: BoxDecoration(
                          // This controls the shadow
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 5,
                                color: Colors.black.withAlpha(50))
                          ],
                          borderRadius: BorderRadius.circular(12),
                          color:
                              iconWhiteColor, // This would be color of the Badge
                        ), // This is your Badge
                        child: Center(
                          // Here you can put whatever content you want inside your Badge
                          child: Text('1',
                              style: textTheme.headline1
                                  ?.copyWith(color: textLightColor)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.h),
                    child: CustomButton(
                      color: createProfileButtonColor,
                      name: "Choose file",
                      textColor: textWhiteColor,
                      onTap: () {
                        debugPrint('click chat');
                      },
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 16.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                          textAlign: TextAlign.start,
                          "or",
                          style: textTheme.headline3
                              ?.copyWith(color: textWhiteColor)),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  _buildYoutubeLinkPasteField(textTheme),
                  const SizedBox(height: 16.0),
                ],
              )),
        ));
  }

  _buildDescriptionTypeField(TextTheme textTheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
      child: Container(
          height: 100.0,
          decoration: BoxDecoration(
            color: textFieldColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
              child: Wrap(
                children: [
                  TextFormField(
                      style: textTheme.subtitle1
                          ?.copyWith(fontSize: 14, color: whiteColor),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: textTheme.subtitle1?.copyWith(
                            fontSize: 14, color: textInputTitleColor),
                        hintText: 'Type Description',
                      )),
                ],
              ))),
    );
  }
}
