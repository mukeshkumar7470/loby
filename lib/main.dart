import 'package:flutter/material.dart';
import 'package:loby/presentation/screens/auth/sign_in/sign_in_screen.dart';

import 'core/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Loby',
     // theme: ApplicationTheme.getAppThemeData(),
      home:  SignInScreen(),
    );
  }
}
