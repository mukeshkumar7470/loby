import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/body_padding_widget.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  Widget body(){
    return Image.network(
      "https://cdn.pixabay.com/photo/2017/02/21/21/13/unicorn-2087450_1280.png",
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

}
