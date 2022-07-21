import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loby/presentation/screens/game_item_screen/widgets/ItemList.dart';
import 'package:sizer/sizer.dart';

import '../../../core/theme/colors.dart';

class GameItemScreen extends StatefulWidget {
  String name;

  GameItemScreen({Key? key, required this.name}) : super(key: key);

  @override
  State<GameItemScreen> createState() => _GameItemScreenState();
}

class _GameItemScreenState extends State<GameItemScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint(widget.name);
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor2,
        body: body(widget.name),
      ),
    );
  }

  Widget body(String name) {
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
                        name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style:
                            textTheme.headline1?.copyWith(color: primaryColor1),
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
          _buildCategories(textTheme),
          const SizedBox(height: 8),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Container(
                    decoration: BoxDecoration(
                      color: textFieldColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextField(
                      style: textTheme.subtitle1
                          ?.copyWith(fontSize: 18, color: textWhiteColor),
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(3.w),
                          child: SvgPicture.asset(
                            'assets/icons/search_icon.svg',
                            color: iconTintColor,
                          ),
                        ),
                        border: InputBorder.none,
                        hintStyle: textTheme.subtitle1
                            ?.copyWith(fontSize: 18, color: iconTintColor),
                        hintText: 'Search',
                      ),
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
                    color: backgroundColor,
                    onPressed: () {
                      debugPrint("Click Search");
                    },
                    child: SvgPicture.asset(
                      'assets/icons/filter_icon.svg',
                      color: iconTintColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    "124 Result",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: textTheme.headline3
                        ?.copyWith(fontSize: 13.0, color: textWhiteColor),
                  ),
                ),
                const SizedBox(width: 4.0),
                Text(
                  "Top Rated",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: textTheme.headline3
                      ?.copyWith(fontSize: 13.0, color: textWhiteColor),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4.0),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Divider(
              color: dividerColor,
              height: 4,
              thickness: 2,
              endIndent: 0,
            ),
          ),
          const SizedBox(height: 10.0),
          _buildGames(textTheme),
        ],
      ),
    );
  }

  _buildCategories(TextTheme textTheme) {
    final items = List.generate(7, (i) => " item $i");
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      alignment: WrapAlignment.spaceEvenly,
      children: [
        ...List.generate(
          items.length,
          (index) => Container(
            decoration: BoxDecoration(
              color: primaryColor2,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: Text('Account',
                  style: textTheme.headline3?.copyWith(color: textWhiteColor)),
            ),
          ),
        ),
      ],
    );
  }

  _buildGames(TextTheme textTheme) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 6.0 / 9,
        mainAxisSpacing: 0.h,
        crossAxisSpacing: 3.h,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: ItemList(name: 'hello $index'),
        );
      },
    );
  }
}
