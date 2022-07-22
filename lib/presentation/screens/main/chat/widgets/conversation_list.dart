import 'package:flutter/material.dart';
import 'package:loby/core/theme/colors.dart';

import '../chat_detail/chat_detail_screen.dart';

class ConversationList extends StatelessWidget {
  String name;
  String? imageUrl;
  String time;

  ConversationList(
      {Key? key,
      required this.name, this.imageUrl,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatDetailScreen()));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
          child: Card(
            elevation: 0,
            color: backgroundColor3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
              decoration: BoxDecoration(
                color: backgroundColor3,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage("hfh"),
                          maxRadius: 30,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  name,
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  time,
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
