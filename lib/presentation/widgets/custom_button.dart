import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/theme/colors.dart';
import '../screens/auth/sign_up/sign_up_bottom_sheet.dart';
import '../screens/main/main_screen.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String name;
  var onTap;

  CustomButton({Key? key, required this.color, required this.name, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: double.infinity,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2.h),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: primaryTextColor)),
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
