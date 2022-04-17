import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:qoutsapp/screens/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String quote = "";
  String author = "";
  String title = "Hans";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              quote,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "- $author",
                style: const TextStyle(fontSize: 15),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              var url = Uri.parse(
                  'https://goquotes-api.herokuapp.com/api/v1/random?count=1');
              var response = await http.get(url);
              // print('Response status: ${response.statusCode}');
              // print('Response body: ${response.body}');
              var data = jsonDecode(response.body);
              quote = data["quotes"][0]["text"];
              author = data["quotes"][0]["author"];
              setState(() {});
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => SecondScreen(
              //         getquotesMsg: quote, getquotesAuthor: author)));
            },
            child: const Text("Get Quote!"),
          ),
        ]),
      ),
    );
  }
}
