import 'package:challenge_project/chat_tile.dart';
import 'package:challenge_project/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Image.asset(
                  'assets/images/pic.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 20),
                Text(
                  'Sabrina Carpenter',
                  style: whiteTextStyle.copyWith(fontSize: 20),
                ),
                SizedBox(height: 2),
                Text('Travel Freelancer',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.only(top: 246),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40))),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text('Friends',
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w700)),
                    SizedBox(height: 15),
                    ChatTile(
                        avaProfile: 'assets/images/ava_one.png',
                        username: 'Joshuer',
                        chatText: 'Sorry, you’re not my ty...,',
                        time: 'now'),
                    SizedBox(
                      height: 10,
                    ),
                    ChatTile(
                        avaProfile: 'assets/images/ava_two.png',
                        username: 'Gabriella',
                        chatText: 'I saw it clearly and mig...',
                        time: '2.30'),
                    SizedBox(height: 20),
                    Text(
                      'Groups',
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height:20),
                    ChatTile(
                        avaProfile: 'assets/images/jakarta_fair.png',
                        username: 'Jakarta Fair',
                        chatText: 'Why does everyone ca...',
                        time: '11.11'),
                    SizedBox(
                      height: 10,
                    ),
                    ChatTile(
                        avaProfile: 'assets/images/angga.png',
                        username: 'Angga',
                        chatText: 'Here here we can go...',
                        time: '7.11'),
                    SizedBox(height: 10),
                    ChatTile(
                        avaProfile: 'assets/images/bentley.png',
                        username: 'Bentley',
                        chatText: 'The car which does not...',
                        time: '7.11'),
                    SizedBox(height: 30),
                    Center(
                      child: FloatingActionButton(onPressed: (){print("Button add Click");},
                      tooltip: "Add",
                        backgroundColor: Colors.greenAccent,
                      child: Icon(Icons.add),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
