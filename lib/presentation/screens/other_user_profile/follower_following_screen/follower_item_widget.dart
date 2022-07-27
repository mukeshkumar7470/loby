import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../widgets/follow_btn.dart';

class FollowerItemWidget extends StatelessWidget {
  const FollowerItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
        onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MessagePage()));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildUserAvtar(primaryDarkColor2),
              const SizedBox(
                width: 4,
              ),
              Expanded(
                child: Text(
                  'Mukesh',
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.headline3?.copyWith(color: textWhiteColor),
                  maxLines: 1,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.31,
                child: Button(
                  width: MediaQuery.of(context).size.width * 0.31,
                  height: 36,
                  onPress: () {
                    debugPrint('Hello bhai');
                  },
                  btnBgColor: btnBgColor4,
                  txtColor: textWhiteColor,
                  btnName: 'Follow',
                ),
              ),
            ],
          ),
        ));
  }

  _buildUserAvtar(Color borderColor) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 32,
        backgroundColor: primaryColor1,
        child: Padding(
          padding: EdgeInsets.all(1.0),
          child: CircleAvatar(
            backgroundColor: backgroundColor2,
            radius: 32,
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/img.png'),
                radius: 32,
                backgroundColor: backgroundColor,
              ),
            ), //CircleAvatar
          ),
        ),
      ),
    );
  }
}
