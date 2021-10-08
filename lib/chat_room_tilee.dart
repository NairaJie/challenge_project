
import 'package:challenge_project/theme.dart';
import 'package:flutter/material.dart';

class ChatRoomTilee extends StatelessWidget {
  final String imageChat;
  final String textChat;
  final String timeChat;

  const ChatRoomTilee({required this.imageChat, required this.textChat, required this.timeChat});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      width: double.infinity,
      height: 100,
      child: Stack(
        children: [
          Positioned(
            right: 80,
            child: Align(
              alignment: FractionalOffset.bottomLeft,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
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
          Positioned(
            right: 20,
            bottom: 5,
            child: Container(
              child: Align(
                alignment: FractionalOffset.bottomRight,
                child: Image.asset(
                  imageChat,
                  width: 40.0,
                  height: 40.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}