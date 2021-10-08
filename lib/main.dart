import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
        },
    );
  }
}

