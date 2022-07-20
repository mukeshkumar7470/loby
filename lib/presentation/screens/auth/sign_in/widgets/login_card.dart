import 'package:flutter/material.dart';
import 'package:loby/core/theme/colors.dart';
import 'package:sizer/sizer.dart';

import '../../sign_up/sign_up_bottom_sheet.dart';
import 'sign_in_with_apple_button.dart';
import '../../../../widgets/sign_in_with_google_button.dart';
import 'create_new_account_button.dart';

class LoginCard extends StatefulWidget {
  const LoginCard({Key? key}) : super(key: key);

  @override
  State<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Card(
        elevation: 0,
        margin: EdgeInsets.all(10.w),
        color: loginCardBackgroundColor,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: textLightColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(4.h, 4.h, 4.h,4.h),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const SignInWithGoogle(color: primaryColor1, name: "Sign in with Apple"),
                SizedBox(
                  width: double.infinity,
                  height: 2.h,
                ),
                SignInWithGoogle(color: primaryColor1, name: "Sign in with Google"),
                SizedBox(
                  width: double.infinity,
                  height: 2.h,
                ),
                const Text("New User ?", style: TextStyle(fontSize: 14, color: quoteTileCallButton)),
                SizedBox(
                  width: double.infinity,
                  height: 2.h,
                ),
                GestureDetector(
                    onTap: (){
                      debugPrint("texdgdg");
                      _showDialog(context, textTheme);
                    },
                    child: SignInWithGoogle(color: btnWhiteColor, name: "Create New Account")),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context, TextTheme textTheme) {
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
                        color: loginCardBackgroundColor,
                        borderRadius:
                        BorderRadius.vertical(top: Radius.circular(24)),
                      ),
                      child: SignUpCardList(scrollController),
                    )),
              ],
            );
          },
        );
      },
    );
  }
}
