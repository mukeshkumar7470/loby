import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loby/presentation/screens/main/profile_screen/profile_screen.dart';

import '../../../core/theme/colors.dart';
import '../../widgets/bottom_nav_bar.dart';
import 'chat/chat_screen.dart';
import 'create_listing_screen/create_listing_screen.dart';
import 'home_screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final _inactiveColor = defaultBottomNavItemColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor2,
        body: getBody(),
        bottomNavigationBar: _buildBottomBar()
    );
  }

  Widget _buildBottomBar(){
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: primaryColor1,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 18,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 0.0),
            child: SvgPicture.asset(
              'assets/icons/home_icon.svg',
              color: iconColor,
            ),
          ),
          title: const Text('Home'),
          activeColor: defaultBottomNavItemColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 0.0),
            child: SvgPicture.asset(
              'assets/icons/create_icon.svg',
              color: iconColor,
            ),
          ),
          title: const Text('Create'),
          activeColor: defaultBottomNavItemColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 0.0),
            child: SvgPicture.asset(
              'assets/icons/chat_icon.svg',
              color: iconColor,
            ),
          ),
          title: const Text(
            'Chat',
          ),
          activeColor: defaultBottomNavItemColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 0.0),
            child: SvgPicture.asset(
              'assets/icons/notification_icon.svg',
              color: iconColor,
            ),
          ),
          title: const Text('Notification'),
          activeColor: defaultBottomNavItemColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 0.0),
            child: SvgPicture.asset(
              'assets/icons/profile_icon.svg',
              color: iconColor,
            ),
          ),
          title: const Text('Profile'),
          activeColor: defaultBottomNavItemColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }


  Widget getBody() {
    List<Widget> pages = [
      Container(
        alignment: Alignment.center,
        child: const HomeScreen(),
      ),
      Container(
        alignment: Alignment.center,
        child: const CreateListingScreen(),
      ),
      Container(
        alignment: Alignment.center,
        child: ChatScreen(), 
      ),
      Container(
        alignment: Alignment.center,
        child: Text("Messages",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      Container(
        alignment: Alignment.center,
        child:const ProfileScreen(),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
