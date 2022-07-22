import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/colors.dart';
import '../../../widgets/custom_button.dart';
class ProfileHeader extends StatelessWidget {
  final coverImage;
  final avatar;
  final String title;
  final String subtitle;

  const ProfileHeader({
    this.coverImage,
    required this.avatar,
    required this.title,
    this.subtitle = "",
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Stack(
      children: <Widget>[
        Container(
          height: 250,
          width: double.infinity,
          child: Image.asset(
            "assets/images/img1.png",
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 12.0),
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 150),
            child: Column(
              children: <Widget>[
                Card(
                  color: backgroundColor,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green[500],
                              radius: 36,
                              child: const Padding(
                                padding: EdgeInsets.all(1.0),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"),
                                  //NetworkImage
                                  radius: 36,
                                ),
                              ), //CircleAvatar
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Mukesh Kumar",
                                            overflow: TextOverflow.ellipsis,
                                            style: textTheme.headline1
                                                ?.copyWith(
                                                fontSize: 16.sp,
                                                color: textWhiteColor)),
                                        const SizedBox(width: 2.0),
                                        SvgPicture.asset(
                                          'assets/icons/user_rating_icon.svg',
                                          color: iconWhiteColor,
                                          height: 14,
                                          width: 14,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Text("536K followers",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: textTheme.headline4
                                                    ?.copyWith(
                                                    color: textWhiteColor)),
                                            const SizedBox(width: 16.0),
                                            Text("120 Listings",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: textTheme.headline4
                                                    ?.copyWith(
                                                    color: textWhiteColor)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: CustomButton(
                                  color: primaryColor2,
                                  textColor: textWhiteColor,
                                  name: "Message",
                                  onTap: () {
                                    debugPrint('click chat');
                                  },
                                ),
                              ),
                              const SizedBox(width: 4.0),
                              SizedBox(
                                width: 6.3.h,
                                height: 6.3.h,
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  color: backgroundColor2,
                                  onPressed: () {
                                    debugPrint("Click Search");
                                  },
                                  child: SvgPicture.asset(
                                    'assets/icons/a_check_icon.svg',
                                    color: iconWhiteColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 16.0),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/outline_rating_icon.svg',
                                    color: iconWhiteColor,
                                    height: 16,
                                    width: 16,
                                  ),
                                  const SizedBox(width: 4.0),
                                  Text("4.2",
                                      overflow: TextOverflow.ellipsis,
                                      style: textTheme.headline2
                                          ?.copyWith(color: textWhiteColor)),
                                ],
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/briefcase_icon.svg',
                                    color: iconWhiteColor,
                                    height: 18,
                                    width: 18,
                                  ),
                                  const SizedBox(width: 4.0),
                                  Text("123 Orders",
                                      overflow: TextOverflow.ellipsis,
                                      style: textTheme.headline2
                                          ?.copyWith(color: textWhiteColor)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}