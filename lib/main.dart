import 'package:flutter/material.dart';
import 'modules/messenger/messenger_screen.dart';

void main() {
  runApp(Starting());
}

class Starting extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessengerScreen(),
    );
  }
}
