import 'package:flutter/material.dart';
import 'package:loby/presentation/screens/other_user_profile/widgets/user_about_widget.dart';
import 'package:loby/presentation/screens/other_user_profile/widgets/user_listing_widget.dart';
import 'package:loby/presentation/screens/other_user_profile/widgets/user_review_rating_widget.dart';
import 'package:sizer/sizer.dart';

import '../../../../models/BubbleData.dart';
import '../../../widgets/custom_chip.dart';
import '../../../widgets/drop_down.dart';
import '../../game_item_screen/widgets/ItemList.dart';

class UserInfo extends StatelessWidget {
  UserInfo({Key? key}) : super(key: key);

  final List<BubbleData> bubbles = [
    BubbleData(text: 'Listing'),
    BubbleData(text: 'About'),
    BubbleData(text: 'Socials'),
    BubbleData(text: 'Review & Ratings'),
    BubbleData(text: 'In-Game Items'),
    BubbleData(text: 'Duels'),
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildCategories(textTheme),
               // UserListingWidget(),
               // UserAboutWidget(),
                UserReviewRatingWidget(),
                UserReviewRatingWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildCategories(TextTheme textTheme) {
    return CustomChip(
      labelName: bubbles,
    );
  }
}
