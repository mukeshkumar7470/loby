import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/colors.dart';
import '../../../widgets/custom_button.dart';
import '../../main/main_screen.dart';
import '../widgets/input_text_title_widget.dart';
import '../widgets/input_text_widget.dart';

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
                          style: textTheme.headlineLarge
                              ?.copyWith(fontSize: 18, color: textWhiteColor)),
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
                  const InputTextTitleWidget(
                      titleName: 'Full Name',
                      titleTextColor: textInputTitleColor),
                  SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  const InputTextWidget(hintName: 'Ex: Jhon Singh'),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  const InputTextTitleWidget(
                      titleName: 'Display Name',
                      titleTextColor: textInputTitleColor),
                  SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  const InputTextWidget(hintName: 'Ex: Commander'),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  const InputTextTitleWidget(
                      titleName: 'Country',
                      titleTextColor: textInputTitleColor),
                  SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  const InputTextWidget(hintName: 'India (Default)'),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  const InputTextTitleWidget(
                      titleName: 'Country',
                      titleTextColor: textInputTitleColor),
                  SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  const InputTextWidget(hintName: 'Ex: Bhopal'),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  const InputTextTitleWidget(
                      titleName: 'DOB', titleTextColor: textInputTitleColor),
                  SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  const InputTextWidget(hintName: '15 July 1999'),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  const InputTextTitleWidget(
                      titleName: 'DOB', titleTextColor: textInputTitleColor),
                  SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  _buildBioNameField(textTheme),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: CustomButton(
                          color: btnBgColor1,
                          textColor: textWhiteColor,
                          name: "Update Profile",
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const MainScreen()));
                          })),
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
                      onPressed: () {
                        debugPrint("change");
                      },
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
                            style:
                                TextStyle(fontSize: 14, color: textWhiteColor)),
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
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
          style: textTheme.subtitle1?.copyWith(fontSize: 14, color: whiteColor),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: textTheme.subtitle1
                ?.copyWith(fontSize: 14, color: textInputTitleColor),
            hintText: 'Ex: Jhon Singh',
          ),
        ),
      ),
    );
  }
}
