import 'package:flutter/material.dart';
import 'package:loby/presentation/screens/auth/sign_up/sign_up_screen.dart';

import '../../../../../core/theme/colors.dart';

class CreateNewAccount extends StatefulWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  State<CreateNewAccount> createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Create new Account",
                style: TextStyle(fontSize: 14, color: primaryTextColor)),
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  )
              ),
            backgroundColor: MaterialStateProperty.all<Color>(whiteColor),
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
          }
      ),
    );
  }
}
