import 'package:flutter/material.dart';

import '../../../../../core/theme/colors.dart';
import '../../sign_up/sign_up_bottom_sheet.dart';

class CreateNewAccount extends StatefulWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  State<CreateNewAccount> createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            )),
            backgroundColor: MaterialStateProperty.all<Color>(whiteColor),
          ),
          onPressed: () {
            _showDialog(context, textTheme);
            //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Create new Account",
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
