import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/theme/colors.dart';

class GoogleAccountButton extends StatefulWidget {
  const GoogleAccountButton({Key? key}) : super(key: key);

  @override
  State<GoogleAccountButton> createState() => _GoogleAccountButtonState();
}

class _GoogleAccountButtonState extends State<GoogleAccountButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Google Account",
                style: TextStyle(fontSize: 14, color: textWhiteColor)),
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                )
            ),
            backgroundColor: MaterialStateProperty.all<Color>(secondaryColor),
          ),
          onPressed: () => null),
    );
  }
}
