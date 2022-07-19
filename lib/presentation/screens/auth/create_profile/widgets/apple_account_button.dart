import 'package:flutter/material.dart';

import '../../../../../core/theme/colors.dart';

class AppleAccountButton extends StatefulWidget {
  const AppleAccountButton({Key? key}) : super(key: key);

  @override
  State<AppleAccountButton> createState() => _AppleAccountButtonState();
}

class _AppleAccountButtonState extends State<AppleAccountButton> {
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
