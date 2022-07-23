import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/theme/colors.dart';

class ProfileOptionsWidget extends StatelessWidget {
  String name;
  var onTap;

  ProfileOptionsWidget({Key? key, required this.name, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.fromLTRB(25, 25, 12, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              name,
              style: textTheme.headline1
                  ?.copyWith(fontSize: 14.sp, color: textWhiteColor),
            )
          ],
        ),
      ),
    );
  }
}
