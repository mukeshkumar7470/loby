import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/theme/colors.dart';

class InputTextWidget extends StatelessWidget {
  final String hintName;

  const InputTextWidget({Key? key, required this.hintName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: textFieldColor,
        borderRadius: BorderRadius.circular(1.5.h),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.7.h, horizontal: 2.h),
        child: TextFormField(
          autofocus: false,
          style: textTheme.subtitle1?.copyWith(color: textWhiteColor),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle:
                textTheme.subtitle1?.copyWith(color: textInputTitleColor),
            hintText: hintName,
          ),
        ),
      ),
    );
  }
}
