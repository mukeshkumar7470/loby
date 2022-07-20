import 'package:flutter/material.dart';
import 'package:loby/presentation/screens/auth/create_profile/widgets/update_profile_button.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/colors.dart';

class CreateProfileCard extends StatelessWidget {
  final ScrollController controller;

   const CreateProfileCard(this.controller);

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Your Profile',
                          style: textTheme.headlineLarge?.copyWith(
                              fontSize: 18, color: textWhiteColor)),
                      IconButton(
                        icon: const Icon(Icons.close, color: whiteColor),
                        onPressed: () => Navigator.of(context).pop(null),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  _buildRow(),
                  SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  const Divider(
                    thickness: 1.2,
                    color: dividerColor,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  SizedBox(
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
                  SizedBox(
                    width: double.infinity,
                    child: Text('Display Name',
                        style: textTheme.subtitle1?.copyWith(
                            fontSize: 14, color: textInputTitleColor)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  _buildDisplayNameField(textTheme),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text('Country',
                        style: textTheme.subtitle1?.copyWith(
                            fontSize: 14, color: textInputTitleColor)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  _buildCountryField(textTheme),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text('City',
                        style: textTheme.subtitle1?.copyWith(
                            fontSize: 14, color: textInputTitleColor)),
                  ),
                   SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  _buildCityField(textTheme),
                   SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text('Date of Birth',
                        style: textTheme.subtitle1),
                  ),
                   SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  _buildDOBField(textTheme),
                   SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text('Bio',
                        style: textTheme.subtitle1),
                  ),
                   SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  _buildBioNameField(textTheme),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
                    child: UpdateProfileButton(),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                ],
              ),
            ));
  }

  Widget _buildRow() {
    return Row(
      children: <Widget>[
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage("assets/icons/app_icon.png"),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(primaryColor1),
                      ),
                      onPressed: () => null,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                        child: Text("Upload New",
                            style: TextStyle(
                                fontSize: 14, color: primaryTextColor)),
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(textFieldColor),
                      ),
                      onPressed: () {
                        debugPrint('clicked');
                      },
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                        child: Text("Upload New",
                            style: TextStyle(
                                fontSize: 14, color: textWhiteColor)),
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  _buildFullNameField(TextTheme textTheme) {
    return Container(
        decoration: BoxDecoration(
          color: textFieldColor,
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
                  hintText: 'Ex: Jhon Singh',
                )
            )
        )
    );
  }

  _buildDisplayNameField(TextTheme textTheme) {
    return Container(
        decoration: BoxDecoration(
          color: textFieldColor,
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
                  hintText: 'Ex: Commandar',
                ))));
  }

  _buildCountryField(TextTheme textTheme) {
    return Container(
        decoration: BoxDecoration(
          color: textFieldColor,
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
                  hintText: 'India (Default)',
                ))));
  }

  _buildCityField(TextTheme textTheme) {
    return Container(
        decoration: BoxDecoration(
          color: textFieldColor,
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
                  hintText: 'India (Default)',
                ))));
  }

  _buildDOBField(TextTheme textTheme) {
    return Container(
        decoration: BoxDecoration(
          color: textFieldColor,
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
                  hintText: 'Lucknow',
                ))));
  }

  _buildBioNameField(TextTheme textTheme) {
    return Container(
        height: 100,
        decoration: BoxDecoration(
          color: textFieldColor,
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
                  hintText: 'Ex: Jhon Singh',
                ))));
  }
}
