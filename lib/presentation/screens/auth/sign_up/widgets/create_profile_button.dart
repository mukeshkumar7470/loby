import 'package:flutter/material.dart';
import 'package:loby/presentation/screens/auth/create_profile/create_profile_screen.dart';

import '../../../../../core/theme/colors.dart';

class CreateProfileButton extends StatefulWidget {
  const CreateProfileButton({Key? key}) : super(key: key);

  @override
  State<CreateProfileButton> createState() => _CreateProfileButtonState();
}

class _CreateProfileButtonState extends State<CreateProfileButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Create Profile",
                style: TextStyle(fontSize: 14, color: textWhiteColor)),
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  )
              ),
            backgroundColor: MaterialStateProperty.all<Color>(createProfileButtonColor),
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateProfileScreen()));
          }),
    );
  }
}
