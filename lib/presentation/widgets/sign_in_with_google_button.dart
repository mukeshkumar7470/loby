import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/theme/colors.dart';
import '../screens/auth/sign_up/sign_up_bottom_sheet.dart';
import '../screens/main/main_screen.dart';

class SignInWithGoogle extends StatefulWidget {
  final Color color;
  final String name;
  const SignInWithGoogle({required this.color, required this.name});

  @override
  State<SignInWithGoogle> createState() => _SignInWithGoogleState();
}

class _SignInWithGoogleState extends State<SignInWithGoogle> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.h),
                  )
              ),
            backgroundColor: MaterialStateProperty.all<Color>(widget.color),
          ),
          onPressed: () {
            if (widget.name == 'Create New Account') {
              _showDialog(context, textTheme);
            } else {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MainScreen()));
            }
          },
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(widget.name,
                style: TextStyle(fontSize: 14, color: primaryTextColor)),
          )),
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
