import 'package:flutter/material.dart';

import '../../core/theme/colors.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.transparent,
      height: 80,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.35),
                offset: const Offset(0, 3),
                blurRadius: 5),
          ],
        ),
        child: TabBar(
          onTap: (int i) {
            setState(() {});
          },
          padding: const EdgeInsets.all(10),
          controller: DefaultTabController.of(context),
          indicator: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(40)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: const Offset(0, 4),
                  blurRadius: 4),
            ],
          ),
          labelStyle: TextStyle(fontSize: 22),
          labelColor: primaryTextColor,
          unselectedLabelStyle: TextStyle(fontSize: 22),
          unselectedLabelColor: Colors.white,
          tabs: [
            Tab(
              icon: customBottomTabWidget(
                (DefaultTabController.of(context)?.index == 0)
                    ? 'assets/icons/app_icon.png'
                    : 'assets/icons/app_icon.png',
                'Home',
              ),
            ),
            Tab(
              icon: customBottomTabWidget(
                (DefaultTabController.of(context)?.index == 0)
                    ? 'assets/icons/app_icon.png'
                    : 'assets/icons/app_icon.png',
                'Home',
              ),
            ),
            Tab(
              icon: customBottomTabWidget(
                (DefaultTabController.of(context)?.index == 0)
                    ? 'assets/icons/app_icon.png'
                    : 'assets/icons/app_icon.png',
                'Home',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget customBottomTabWidget(String iconPath, String tabLabel) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const SizedBox(height: 3),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(iconPath),
            height: 18,
            width: 18,
          ),
          const SizedBox(width: 5),
          Text(tabLabel),
        ],
      ),
    ],
  );
}