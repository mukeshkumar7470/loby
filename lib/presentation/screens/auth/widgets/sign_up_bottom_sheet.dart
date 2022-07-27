import 'package:flutter/material.dart';
import 'package:loby/presentation/widgets/input_text_widget.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/colors.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/input_text_title_widget.dart';
import '../../main/main_screen.dart';
import 'create_profile_bottom_sheet.dart';

class SignUpCardList extends StatelessWidget {
  final ScrollController controller;

  const SignUpCardList({Key? key, required this.controller});

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
                      titleName: 'Email Address',
                      titleTextColor: textInputTitleColor),
                  SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  const InputTextWidget(hintName: 'Ex: jhonsingh@gmail.com'),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  const InputTextTitleWidget(
                      titleName: 'Password',
                      titleTextColor: textInputTitleColor),
                  SizedBox(
                    width: double.infinity,
                    height: 2.h,
                  ),
                  const InputTextWidget(hintName: '******'),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: CustomButton(
                          color: purpleLightIndigoColor,
                          textColor: textWhiteColor,
                          name: "Create Profile",
                          onTap: () {
                            Navigator.pop(context);
                            _showCreateProfileBottomSheet(context, textTheme);
                          },
                      ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  Text('Sign up using Google or Apple',
                      style: textTheme.subtitle2
                          ?.copyWith(color: textInputTitleColor)),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  CustomButton(
                      color: butterflyBlueColor,
                      textColor: textWhiteColor,
                      name: "Google Account",
                      onTap: () {
                        _goToMainScreen(context, textTheme);
                      }),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                  CustomButton(
                      color: butterflyBlueColor,
                      textColor: textWhiteColor,
                      name: "Apple Account",
                      onTap: () {
                        _goToMainScreen(context, textTheme);
                      }),
                  SizedBox(
                    width: double.infinity,
                    height: 4.h,
                  ),
                ],
              ),
            ));
  }

  void _goToMainScreen(BuildContext context, TextTheme textTheme) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const MainScreen()));
  }

  _showCreateProfileBottomSheet(BuildContext context, TextTheme textTheme) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.9,
          maxChildSize: 0.9,
          minChildSize: 0.5,
          builder: (context, scrollController) {
            return Column(
              children: <Widget>[
                Expanded(
                    child: Container(
                  decoration: const BoxDecoration(
                    color: backgroundBalticSeaColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(24)),
                  ),
                  child: CreateProfileCard(scrollController),
                )),
              ],
            );
          },
        );
      },
    );
  }
}
