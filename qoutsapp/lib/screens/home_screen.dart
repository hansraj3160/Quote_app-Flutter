import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:qoutsapp/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // appBar: AppBar(
            //   title: const Text("Qouts App"),
            // ),
            body: Center(
      child: ElevatedButton(
        onPressed: () async {
          var url = Uri.parse(
              'https://goquotes-api.herokuapp.com/api/v1/random?count=1');
          var response = await http.get(url);
          // print('Response status: ${response.statusCode}');
          // print('Response body: ${response.body}');
          var data = jsonDecode(response.body);
          String quotesMsg = data["quotes"][0]["text"];
          String quotesAuthor = data["quotes"][0]["author"];
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SecondScreen(
                  getquotesMsg: quotesMsg, getquotesAuthor: quotesAuthor)));
        },
        child: const Text("Get Quote!"),
      ),
    )));
  }
}
