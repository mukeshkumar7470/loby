import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loby/presentation/screens/categories/widgets/categoriy_item_card.dart';
import 'package:sizer/sizer.dart';

import '../../../core/theme/colors.dart';

class CategoryItemScreen extends StatefulWidget {
  String name;

  CategoryItemScreen({Key? key, required this.name}) : super(key: key);

  @override
  State<CategoryItemScreen> createState() => _CategoryItemScreenState();
}

class _CategoryItemScreenState extends State<CategoryItemScreen> {
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
            decoration: BoxDecoration(color: backgroundColor),
            child: Padding(
              padding: EdgeInsets.all(2.h),
              child: Align(
                alignment: Alignment.center,
                child: Container(
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
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 7.h,
                  height: 7.h,
                  child: MaterialButton(
                    shape: CircleBorder(
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/back_icon.svg',
                      color: whiteColor,
                    ),
                    color: backgroundColor,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
                      child: Text(
                        '$name',
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.headlineLarge?.copyWith(color: primaryColor1),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 7.h,
                  height: 7.h,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/search_icon.svg',
                      color: whiteColor,
                    ),
                    color: backgroundColor,
                    onPressed: () {
                      debugPrint("Click Search");
                    },
                  ),
                ),
              ],
            ),
          ),
          _buildCategories(textTheme),
        ],
      ),
    );
  }

  _buildCategories(TextTheme textTheme) {
    var myDynamicAspectRatio = 1000 / 1;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 0.h,
        crossAxisSpacing: 0.h,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 50,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: CategoryItemCard(index: index),
        );
      },
    );
  }
}
