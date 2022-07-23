import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../core/theme/colors.dart';
import 'all_orders_screen.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  final _tabs = [
    Tab(text: 'All Orders'),
    Tab(text: 'Bought'),
    Tab(text: 'Sold'),
  ];


  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return DefaultTabController(
      length: 3,
      child:  Scaffold(
        backgroundColor: backgroundColor2,
        appBar:  PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.31),
          child:  Container(
            child:  SafeArea(
              child: Column(
                children: <Widget>[
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
                      mainAxisAlignment: MainAxisAlignment.start,
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
                      ],
                    ),
                  ),
                   TabBar(
                     indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: tabIndicatorColor,
                    indicatorWeight: 4.0,
                    labelColor: textWhiteColor,
                    labelStyle: textTheme.headline3,
                    tabs: _tabs,
                  ),
                ],
              ),
            ),
          ),
        ),
        body:  TabBarView(
          children: <Widget>[
            AllOrdersTabScreen(),
            AllOrdersTabScreen(),
            AllOrdersTabScreen()
          ],
        ),
      ),
    );
  }
}