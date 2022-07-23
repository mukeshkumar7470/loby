import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/colors.dart';

class OrderItem extends StatelessWidget {
  final String name;

  const OrderItem({Key? key, required this.name});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        debugPrint('check');
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
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: 10.h,
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
                  Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Text("Lvl 78 Account on SA",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: textTheme.headline1
                                        ?.copyWith(color: textWhiteColor)),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: btnBgColor4,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 8.0),
                                  child: Text('Update Status',
                                      style: textTheme.subtitle2
                                          ?.copyWith(color: textWhiteColor)),
                                ),
                              ),
                            ],
                          ),
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
                                            style: textTheme.headline3
                                                ?.copyWith(
                                                    fontSize: 10.0,
                                                    color: textWhiteColor)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4.0),
                          Row(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Current Status : ",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: textTheme.headline3?.copyWith(
                                        fontSize: 11.0, color: textLightColor),
                                  ),
                                  const SizedBox(width: 2.0),
                                  Text(
                                    "Order in Progress",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: textTheme.headline3?.copyWith(
                                        fontSize: 11.0, color: primaryColor1),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
