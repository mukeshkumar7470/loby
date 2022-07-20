import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/theme/colors.dart';
import '../create_profile_bottom_sheet.dart';

class CreateProfileButton extends StatefulWidget {
  const CreateProfileButton({Key? key}) : super(key: key);

  @override
  State<CreateProfileButton> createState() => _CreateProfileButtonState();
}

class _CreateProfileButtonState extends State<CreateProfileButton> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          child: Padding(
            padding: EdgeInsets.all(2.h),
            child: Text("Create Profile",
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
            Navigator.pop(context);
            _showDialog(context, textTheme);
            //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
          }),
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
                  child: CreateProfileCard(scrollController),
                )),
              ],
            );
          },
        );
      },
    );
  }
}
