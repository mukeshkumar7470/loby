import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../core/theme/colors.dart';
import '../../widgets/custom_button.dart';

class GameDetailScreen extends StatefulWidget {
  const GameDetailScreen({Key? key}) : super(key: key);

  @override
  State<GameDetailScreen> createState() => _GameDetailScreenState();
}

class _GameDetailScreenState extends State<GameDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor2,
        body: body(),
      ),
    );
  }

  Widget body() {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: backgroundColor),
            child: Padding(
              padding: EdgeInsets.all(2.h),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 9.h,
                  child: Image.asset(
                    "assets/icons/app_icon.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 7.h,
                  height: 7.h,
                  child: MaterialButton(
                    shape: const CircleBorder(),
                    color: backgroundColor,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: SvgPicture.asset(
                      'assets/icons/back_icon.svg',
                      color: whiteColor,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 8.0),
                      child: Text(
                        '',
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.headlineLarge
                            ?.copyWith(color: primaryColor1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 7.h,
                  height: 7.h,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: backgroundColor,
                    onPressed: () {
                      debugPrint("Click Search");
                    },
                    child: SvgPicture.asset(
                      'assets/icons/search_icon.svg',
                      color: whiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              color: backgroundColor,
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: primaryColor3,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Image.asset(
                  "assets/images/img.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Text(
                "Lvl 78 Account on SALE. Trusted Seller. 100% Guaranteed",
                style: textTheme.headline2?.copyWith(color: textWhiteColor)),
          ),
          const SizedBox(height: 8.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: primaryColor2,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8.0),
                    child: Text('Battlegrounds Mobile India',
                        style: textTheme.headline3
                            ?.copyWith(fontSize: 12.0, color: textWhiteColor)),
                  ),
                ),
                const SizedBox(width: 4.0),
                Container(
                  decoration: BoxDecoration(
                    color: gameDetailCategoryNameBgColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8.0),
                    child: Text('Account',
                        style: textTheme.headline3
                            ?.copyWith(fontSize: 12.0, color: textWhiteColor)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              color: backgroundColor,
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Unit Price / Per Hour",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: textTheme.headline3?.copyWith(
                                fontSize: 12.0, color: textLightColor),
                          ),
                          Text(
                            "₹ 25,000",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: textTheme.headline1
                                ?.copyWith(color: primaryColor1),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Stock",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: textTheme.headline3?.copyWith(
                                fontSize: 12.0, color: textLightColor),
                          ),
                          Text(
                            "10",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: textTheme.headline3?.copyWith(
                                fontSize: 12.0, color: textLightColor),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/plus_circle_icon.svg',
                            color: whiteColor,
                            width: 5.h,
                            height: 5.h,
                          ),
                          const SizedBox(width: 8.0),
                          Container(
                            // This is your Badge
                            padding: const EdgeInsets.all(8),
                            constraints:
                                const BoxConstraints(minHeight: 46, minWidth: 46),
                            decoration: BoxDecoration(
                              // This controls the shadow
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    color: Colors.black.withAlpha(50))
                              ],
                              borderRadius: BorderRadius.circular(32),
                              color:
                                  iconWhiteColor, // This would be color of the Badge
                            ), // This is your Badge
                            child: Center(
                              // Here you can put whatever content you want inside your Badge
                              child: Text('4',
                                  style: textTheme.headline1
                                      ?.copyWith(color: textLightColor)),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          SvgPicture.asset(
                            'assets/icons/minus_circle_icon.svg',
                            color: whiteColor,
                            width: 5.h,
                            height: 5.h,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Price",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: textTheme.headline3?.copyWith(
                                fontSize: 12.0, color: textLightColor),
                          ),
                          Text(
                            "₹ 50,000",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: textTheme.headline1
                                ?.copyWith(color: primaryColor1),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Earn Loby Coins",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: textTheme.headline3?.copyWith(
                                fontSize: 12.0, color: textLightColor),
                          ),
                          Text(
                            "500",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: textTheme.headline3?.copyWith(
                                fontSize: 12.0, color: textLightColor),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Card(
              color: backgroundColor,
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
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
                          margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mukesh Kumar Patel",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: textTheme.headline3?.copyWith(
                                    fontSize: 16.0, color: textWhiteColor),
                              ),
                              Row(
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/user_rating_icon.svg',
                                        color: iconWhiteColor,
                                        height: 16.0,
                                        width: 16.0,
                                      ),
                                      const SizedBox(width: 4.0),
                                      Text(
                                        "4.5",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: textTheme.headline3?.copyWith(
                                            fontSize: 16.0,
                                            color: textWhiteColor),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 16.0),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/user_chat_icon.svg',
                                        color: iconWhiteColor,
                                        height: 16.0,
                                        width: 16.0,
                                      ),
                                      const SizedBox(width: 4.0),
                                      Text(
                                        "12",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: textTheme.headline3?.copyWith(
                                            fontSize: 16.0,
                                            color: textWhiteColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 4.0),
                      SizedBox(
                        width: 7.h,
                        height: 7.h,
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
                            color: iconYellowColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Listing ID",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: textTheme.headline3
                              ?.copyWith(fontSize: 12.0, color: textLightColor),
                        ),
                        Text(
                          "#46747",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: textTheme.headline3
                              ?.copyWith(fontSize: 12.0, color: textLightColor),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Game",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: textTheme.headline3
                              ?.copyWith(fontSize: 12.0, color: textLightColor),
                        ),
                        Text(
                          "BGMI",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: textTheme.headline3
                              ?.copyWith(fontSize: 12.0, color: textLightColor),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Category",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: textTheme.headline3
                              ?.copyWith(fontSize: 12.0, color: textLightColor),
                        ),
                        Text(
                          "Accounts",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: textTheme.headline3
                              ?.copyWith(fontSize: 12.0, color: textLightColor),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Service Type",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: textTheme.headline3
                              ?.copyWith(fontSize: 12.0, color: textLightColor),
                        ),
                        Text(
                          "#46747",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: textTheme.headline3
                              ?.copyWith(fontSize: 12.0, color: textLightColor),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Game Platform",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: textTheme.headline3
                              ?.copyWith(fontSize: 12.0, color: textLightColor),
                        ),
                        Text(
                          "Mobile",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: textTheme.headline3
                              ?.copyWith(fontSize: 12.0, color: textLightColor),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "Description: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                            style: textTheme.headline3?.copyWith(
                                fontSize: 12.0, color: textLightColor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 6.3.h,
                  height: 6.3.h,
                  child: CustomButton(
                    color: primaryColor1,
                    name: "Chat",
                    onTap: () {
                      debugPrint('click chat');
                    },
                  ),
                ),
                const SizedBox(width: 4.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: CustomButton(
                    color: primaryColor2,
                    name: "Buy Now",
                    onTap: () {
                      debugPrint('click chat');
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
