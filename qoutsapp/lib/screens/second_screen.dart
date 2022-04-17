import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondScreen extends StatelessWidget {
  String getquotesMsg;
  String getquotesAuthor;
  SecondScreen(
      {Key? key, required this.getquotesMsg, required this.getquotesAuthor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [],
      )),
    );
  }
}
