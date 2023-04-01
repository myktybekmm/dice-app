import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int numberone = 1;
  int numbertwo = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Тапшырма 5',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              Random randomone = Random();
              Random randomtwo = Random();
              numberone = randomone.nextInt(6) + 1;
              numbertwo = randomtwo.nextInt(6) + 1;
              setState(() {});
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 200,
                    child: Image.asset("assets/dice$numberone.png")),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 200,
                  child: Image.asset("assets/dice$numbertwo.png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
