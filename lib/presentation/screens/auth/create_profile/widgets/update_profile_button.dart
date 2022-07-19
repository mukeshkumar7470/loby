import 'package:flutter/material.dart';

import '../../../../../core/theme/colors.dart';
import '../../../main/main_screen.dart';

class UpdateProfileButton extends StatefulWidget {
  const UpdateProfileButton({Key? key}) : super(key: key);

  @override
  State<UpdateProfileButton> createState() => _UpdateProfileButtonState();
}

class _UpdateProfileButtonState extends State<UpdateProfileButton> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Update Profile",
                style: TextStyle(fontSize: 14, color: textWhiteColor)),
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            )),
            backgroundColor:
                MaterialStateProperty.all<Color>(createProfileButtonColor),
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MainScreen()));
          }),
    );
  }
}
