import 'package:challenge_project/theme.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';
import 'home_screen.dart';

class ChatTilee extends StatelessWidget {
  final String avaProfile;
  final String username;
  final String chatText;
  final String call;

  const ChatTilee(
      {required this.avaProfile,
        required this.username,
        required this.chatText,
        required this.call});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  ChatScreen()) );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            avaProfile,
            width: 44.0,
          ),
          SizedBox(
            width: 24.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: blackTextStyle.copyWith(
                    fontSize: 16.0, fontWeight: FontWeight.w600),
              ),
              Text(chatText, style: greyTextStyle),
            ],
          ),
          Spacer(),
          Image.asset(
            call,
            width: 44.0,
          )
        ],
      ),
    );
  }
}

