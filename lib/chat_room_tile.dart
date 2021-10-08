
import 'package:challenge_project/theme.dart';
import 'package:flutter/material.dart';

class ChatRoomTile extends StatelessWidget {
  final String imageChat;
  final String textChat;
  final String timeChat;

  const ChatRoomTile({required this.imageChat, required this.textChat, required this.timeChat});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      width: double.infinity,
      height: 75,
      child: Stack(
        children: [
          Positioned(
            child: Align(
              alignment: FractionalOffset.bottomLeft,
              child: Image.asset(
                imageChat,
                width: 40.0,
                height: 40.0,
              ),
            ),
          ),
          Positioned(
            left: 50,
            child: Align(
              alignment: FractionalOffset.bottomLeft,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        color: chatColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textChat,
                            style: greyTextStyle.copyWith(
                                fontSize: 16),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            timeChat,
                            style: greyTextStyle.copyWith(
                                fontSize: 14.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}