import 'package:flutter/material.dart';

import '../../../../../core/theme/colors.dart';
import 'create_profile_button.dart';

class CreateProfileCard extends StatefulWidget {
  const CreateProfileCard({Key? key}) : super(key: key);

  @override
  State<CreateProfileCard> createState() => _CreateProfileCardState();
}

class _CreateProfileCardState extends State<CreateProfileCard> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: loginCardBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          )),
      child: Padding(
        padding: EdgeInsets.fromLTRB(31.5, 16.00, 31.5, 16.00),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Text('Your Profile',
                        style: textTheme.headlineLarge
                            ?.copyWith(fontSize: 18, color: textWhiteColor)),
                  ),
                  IconButton(
                    icon: Icon(Icons.close, color: whiteColor),
                    onPressed: () => Navigator.of(context).pop(null),
                  ),
                ],
              ),
              _buildRow(),
              SizedBox(
                width: double.infinity,
                height: 16.00,
              ),
              Divider(
                thickness: 1.2,
                color: dividerColor,
              ),
              SizedBox(
                width: double.infinity,
                height: 16.00,
              ),
              Container(
                width: double.infinity,
                child: Text('Full Name',
                    style: textTheme.subtitle1
                        ?.copyWith(fontSize: 14, color: textInputTitleColor)),
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
                child: Text('Display Name',
                    style: textTheme.subtitle1
                        ?.copyWith(fontSize: 14, color: textInputTitleColor)),
              ),
              SizedBox(
                width: double.infinity,
                height: 16.00,
              ),
              _buildDisplayNameField(textTheme),
              SizedBox(
                width: double.infinity,
                height: 31.00,
              ),
              Container(
                width: double.infinity,
                child: Text('Country',
                    style: textTheme.subtitle1
                        ?.copyWith(fontSize: 14, color: textInputTitleColor)),
              ),
              SizedBox(
                width: double.infinity,
                height: 16.00,
              ),
              _buildCountryField(textTheme),
              SizedBox(
                width: double.infinity,
                height: 31.00,
              ),
              Container(
                width: double.infinity,
                child: Text('City',
                    style: textTheme.subtitle1
                        ?.copyWith(fontSize: 14, color: textInputTitleColor)),
              ),
              SizedBox(
                width: double.infinity,
                height: 16.00,
              ),
              _buildCityField(textTheme),
              SizedBox(
                width: double.infinity,
                height: 31.00,
              ),
              Container(
                width: double.infinity,
                child: Text('Date of Birth',
                    style: textTheme.subtitle1
                        ?.copyWith(fontSize: 14, color: textInputTitleColor)),
              ),
              SizedBox(
                width: double.infinity,
                height: 16.00,
              ),
              _buildDOBField(textTheme),
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
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRow() {
    return Container(
      child: Row(
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
                              MaterialStateProperty.all<Color>(primaryColor),
                        ),
                        onPressed: () => null,
                        child: const Padding(
                          padding:
                              EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
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
                        onPressed: () => null,
                        child: const Padding(
                          padding:
                          EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
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
      ),
    );
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

  _buildDisplayNameField(TextTheme textTheme) {
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
                  hintText: 'Ex: Commandar',
                ))));
  }

  _buildCountryField(TextTheme textTheme) {
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
                  hintText: 'India (Default)',
                )
            )
        )
    );
  }

  _buildCityField(TextTheme textTheme) {
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
                  hintText: 'India (Default)',
                ))));
  }

  _buildDOBField(TextTheme textTheme) {
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
                  hintText: 'Lucknow',
                ))));
  }
}
