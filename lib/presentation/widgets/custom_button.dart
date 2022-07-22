import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/theme/colors.dart';
import '../screens/auth/sign_up/sign_up_bottom_sheet.dart';
import '../screens/main/main_screen.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String name;
  Color? textColor;
  var onTap;

  CustomButton({Key? key, required this.color, required this.name, required this.onTap, this.textColor}) : super(key: key);

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
                style: TextStyle(fontSize: 14, color: textColor?? primaryTextColor)),
          ),
        ),
      ),
    );
  }
}
