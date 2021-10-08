import 'package:challenge_project/chat_room_tile.dart';
import 'package:challenge_project/chat_room_tilee.dart';
import 'package:challenge_project/chat_tilee.dart';
import 'package:challenge_project/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0))),
            child: ChatTilee(
                avaProfile: 'assets/images/jakarta_fair.png',
                username: 'Jakarta Fair',
                chatText: '14,209',
                call: 'assets/images/call.png'),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                ChatRoomTile(
                    imageChat: 'assets/images/ava_one.png',
                    textChat: 'How are ya guys?',
                    timeChat: '2.30'),
                SizedBox(height: 20),
                ChatRoomTile(
                    imageChat: 'assets/images/yosh.png',
                    textChat: 'Find here :P',
                    timeChat: '3.11'),
                SizedBox(height: 20),
                ChatRoomTilee(
                    imageChat: 'assets/images/sabrina.png',
                    textChat:
                        'Thinking about how to deal\nwith this client from hell...',
                    timeChat: '22.10'),
                SizedBox(
                  height: 20,
                ),
                ChatRoomTile(
                    imageChat: 'assets/images/ava_two.png',
                    textChat: 'Love them',
                    timeChat: '23.11'),
              ],
            ),
          ),
          SizedBox(height: 90,),
          Container(
            margin: EdgeInsets.all(30.0),
            width: double.infinity,
            height: 54.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                    Radius.circular(30.0))
            ),
            child: Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                children: [
                  Text('Type Message ...', style: typemessageTextStyle.copyWith(fontSize: 16.0)),
                  Spacer(),
                  Image.asset('assets/images/btn_send.png', width: 35, height: 35),
                ],
              ),
            ),

          ),
        ],
      ),
    );
  }
}
