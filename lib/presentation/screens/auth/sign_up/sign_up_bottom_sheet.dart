import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/colors.dart';
import '../create_profile/widgets/apple_account_button.dart';
import '../create_profile/widgets/create_profile_button.dart';
import '../create_profile/widgets/google_account_button.dart';

class SignUpCardList extends StatelessWidget {
  final ScrollController controller;

  const SignUpCardList(this.controller);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListView.builder(
        controller: controller,
        // assign controller here
        itemCount: 1,
        itemBuilder: (_, index) => Padding(
              padding: EdgeInsets.all(4.h),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 1.h,
                  ),
                  Text('Sign up',
                      style: textTheme.headlineLarge
                          ?.copyWith(fontSize: 32, color: textWhiteColor)),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('Full Name',
                        style: textTheme.subtitle1?.copyWith(
                            fontSize: 14, color: textInputTitleColor)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  _buildFullNameField(textTheme),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('Email Address',
                        style: textTheme.subtitle1?.copyWith(
                            fontSize: 14, color: textInputTitleColor)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  _buildEmailField(textTheme),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('Password',
                        style: textTheme.subtitle1?.copyWith(
                            fontSize: 14, color: textInputTitleColor)),
                  ),
                   SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  _buildPasswordField(textTheme),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
                    child: CreateProfileButton(),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  Container(
                    child: Text('Sign up using Google or Apple',
                        style: textTheme.subtitle1?.copyWith(
                            fontSize: 14, color: textInputTitleColor)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  AppleAccountButton(),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  GoogleAccountButton(),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                ],
              ),
            ));
  }

  _buildFullNameField(TextTheme textTheme) {
    return Container(
        decoration: BoxDecoration(
          color: textFieldColor,
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: TextFormField(
                style: textTheme.subtitle1
                    ?.copyWith(fontSize: 14, color: whiteColor),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: textTheme.subtitle1
                      ?.copyWith(fontSize: 14, color: textInputTitleColor),
                  hintText: 'Ex: Jhon Singh',
                ))));
  }

  _buildEmailField(TextTheme textTheme) {
    return Container(
        decoration: BoxDecoration(
          color: textFieldColor,
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: TextFormField(
                style: textTheme.subtitle1
                    ?.copyWith(fontSize: 14, color: whiteColor),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: textTheme.subtitle1
                      ?.copyWith(fontSize: 14, color: textInputTitleColor),
                  hintText: 'Ex: jhonsingh@gmail.com',
                ))));
  }

  _buildPasswordField(TextTheme textTheme) {
    return Container(
        decoration: BoxDecoration(
          color: textFieldColor,
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: TextFormField(
                style: textTheme.subtitle1
                    ?.copyWith(fontSize: 14, color: whiteColor),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: textTheme.subtitle1
                      ?.copyWith(fontSize: 14, color: textInputTitleColor),
                  hintText: '********',
                ))));
  }
}
