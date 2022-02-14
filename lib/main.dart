import 'package:dice_game/dice_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DiceGame'),
          backgroundColor: Colors.white54,
          centerTitle: true,
        ),
        body: const DicePage(),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
