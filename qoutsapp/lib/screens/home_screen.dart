import 'package:flutter/material.dart';
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
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SecondScreen()));
        },
        child: const Text("Got to Screen"),
      ),
    )));
  }
}
