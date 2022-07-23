import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../game_details/game_details_screen.dart';

class MyListingItemList extends StatelessWidget {
  final String name;

  MyListingItemList({required this.name});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const GameDetailScreen(),
          ),
        );
      },
      child: Card(
        color: backgroundColor,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 12.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: primaryColor1,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    "assets/images/img.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Lvl 78 Account on SA",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style:
                          textTheme.headline1?.copyWith(color: textWhiteColor)),
                  Text("item.category",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: textTheme.headline3
                          ?.copyWith(color: textInputTitleColor)),
                  const SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(right: 4.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: primaryColor2,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0.0, horizontal: 4.0),
                                child: Text('Account',
                                    style: textTheme.headline3?.copyWith(
                                        fontSize: 10.0, color: textWhiteColor)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 4.0),
                        child: Column(
                          children: <Widget>[
                            Text('₹ 25,000',
                                style: textTheme.headline1?.copyWith(
                                    fontSize: 16.0, color: primaryColor1)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(btnBgColor6),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),))),
                      onPressed: () {},
                      child: Text("Mark Inactive",
                          style: textTheme.headline4
                              ?.copyWith(color: textWhiteColor)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(btnBgColor4),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),))),
                        onPressed: () {},
                        child: Text("Edit",
                            style: textTheme.headline4
                                ?.copyWith(color: textWhiteColor)),
                      ),
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(btnBgColor5),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),))),
                        onPressed: () {},
                        child: Text("Delete",
                            style: textTheme.headline4
                                ?.copyWith(color: textWhiteColor)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
