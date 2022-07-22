import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/colors.dart';
import '../../../widgets/star_rating.dart';

class UserReviewRatingWidget extends StatefulWidget {
  const UserReviewRatingWidget({Key? key}) : super(key: key);

  @override
  State<UserReviewRatingWidget> createState() => _UserReviewRatingWidgetState();
}

class _UserReviewRatingWidgetState extends State<UserReviewRatingWidget> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return _buildWidget(textTheme);
  }

  _buildWidget(TextTheme textTheme) {
    double rating = 3.5;
    return Column(
      children: <Widget>[
        Card(
          color: textFieldColor,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("rahulsingh",
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.headline2
                            ?.copyWith(color: textWhiteColor)),
                    SizedBox(
                      width: 16,
                    ),
                    StarRating(
                      rating: rating,
                        color: primaryColor3,
                      onRatingChanged: (rating) => setState(() => rating = rating),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text("Good service. Fast delivery. Trusted seller. ",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.headline3
                        ?.copyWith(color: textLightColor)),
              ],
            ),
          ),
        )
      ],
    );
  }
}