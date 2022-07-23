import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import 'chat_bubble.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Type Something',
            ),
            Icon(Icons.send)
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: chatInput(),
      body: SafeArea(
        child: Column(
          children: [
            const ChatBubble(
                imageUrl: 'assets/images/img.png',
                text: 'How are you guys? ',
                time: '2:30'),
            const ChatBubble(
                imageUrl: 'assets/images/img.png',
                text: 'Find here :P',
                time: '3:11'),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 11,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Thinking about how to deal',
                            style: TextStyle(fontSize: 16, color: primaryColor1),
                          ),
                          Text(
                            '22:08',
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Image.asset(
                    'assets/images/img.png',
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
            ),
            const ChatBubble(
                imageUrl: 'assets/images/img1.png',
                text: 'Love them',
                time: '23:11'),
          ],
        ),
      ),
    );
  }
}
