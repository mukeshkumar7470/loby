import 'package:flutter/material.dart';

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
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 16.00,
                  ),
                  Text('Sign up',
                      style: textTheme.headlineLarge
                          ?.copyWith(fontSize: 32, color: textWhiteColor)),
                  SizedBox(
                    width: double.infinity,
                    height: 16.00,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('Full Name',
                        style: textTheme.subtitle1?.copyWith(
                            fontSize: 14, color: textInputTitleColor)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 16.00,
                  ),
                  _buildFullNameField(textTheme),
                  SizedBox(
                    width: double.infinity,
                    height: 31.00,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('Email Address',
                        style: textTheme.subtitle1?.copyWith(
                            fontSize: 14, color: textInputTitleColor)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 16.00,
                  ),
                  _buildEmailField(textTheme),
                  SizedBox(
                    width: double.infinity,
                    height: 31.00,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('Password',
                        style: textTheme.subtitle1?.copyWith(
                            fontSize: 14, color: textInputTitleColor)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 16.00,
                  ),
                  _buildPasswordField(textTheme),
                  SizedBox(
                    width: double.infinity,
                    height: 31.00,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
                    child: CreateProfileButton(),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 31.00,
                  ),
                  Container(
                    child: Text('Sign up using Google or Apple',
                        style: textTheme.subtitle1?.copyWith(
                            fontSize: 14, color: textInputTitleColor)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 31.00,
                  ),
                  GoogleAccountButton(),
                  SizedBox(
                    width: double.infinity,
                    height: 31.00,
                  ),
                  AppleAccountButton(),
                  SizedBox(
                    width: double.infinity,
                    height: 31.00,
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
