import 'package:flutter/material.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

bool isSwipeUp =false;

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      width: size.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(26, 41, 128, 100),
            Color.fromRGBO(42, 178, 252, 100),
          ]),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50))),
      child: Align(alignment: Alignment.topCenter,
        child: (isSwipeUp)
            ? Icon(
          Icons.expand_more_outlined,
          size: 30,
          color: Colors.white,
        )
            : Icon(
          Icons.expand_less_outlined,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}