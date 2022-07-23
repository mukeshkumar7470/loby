import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loby/presentation/screens/main/chat/widgets/conversation_list.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/colors.dart';
import '../../../../models/ChatUsers.dart';
import '../../game_item_screen/game_itm_screen.dart';
import '../home_screen/widgets/game_list_card.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Jane Russel", time: "Now"),
    ChatUsers(name: "Glady's Murphy", time: "Yesterday"),
    ChatUsers(name: "Jorge Henry", time: "31 Mar"),
    ChatUsers(name: "Philip Fox", time: "28 Mar"),
    ChatUsers(name: "Debra Hawkins", time: "23 Mar"),
    ChatUsers(name: "Jacob Pena", time: "17 Mar"),
    ChatUsers(name: "Andrey Jones", time: "24 Feb"),
    ChatUsers(name: "John Wick", time: "18 Feb"),
  ];

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
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 8.0),
                      child: Text(
                        'Create New Listing',
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.headlineLarge
                            ?.copyWith(color: textWhiteColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          _buildTopGames(textTheme),
        ],
      ),
    );
  }

  _buildTopGames(TextTheme textTheme) {
    return ListView.builder(
      itemCount: chatUsers.length,
      shrinkWrap: true,
      padding: EdgeInsets.only(top: 16),
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index){
        return ConversationList(
          name: chatUsers[index].name,
          time: chatUsers[index].time,
        );
      },
    );
  }
}