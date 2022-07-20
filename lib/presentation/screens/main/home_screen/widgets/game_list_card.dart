import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/theme/colors.dart';

class GameCard extends StatelessWidget {
  int index;
  GameCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 0,
      shadowColor: Colors.black,
      color: Colors.transparent,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.green[500],
                radius: 35,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"), //NetworkImage
                    radius: 35,
                  ),
                ), //CircleAvatar
              ),
              SizedBox(
                height: 0.5.h,
              ),//CircleAvatar//SizedBox
              Expanded(
                child: Text(
                  'Bettelground Mobile',
                  textAlign: TextAlign.center,
                  style: textTheme.subtitle1
                      ?.copyWith(fontSize: 14, color: textWhiteColor), //Textstyle
                ),
              ), //Text
              SizedBox(
                height: 0.5.h,
              ), //SizedBoxe
            ],
          ), //Column
        ), //Padding
      ), //SizedBox
    );
  }
}
