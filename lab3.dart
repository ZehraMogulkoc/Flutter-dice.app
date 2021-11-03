import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.red,
        appBar:  AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: deneme(),
      ),
    ),
  );
}
class deneme extends StatefulWidget {
  const deneme({Key? key}) : super(key: key);

  @override
  _denemeState createState() => _denemeState();
}

class _denemeState extends State<deneme> {

  int firstNum = 1;
  int secondNum = 1;


  void click() {
    setState(() {
      firstNum = Random().nextInt(6) + 1;
      secondNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                click();
              },
              child: Image.asset('images/dice$firstNum.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                click();
              },
              child: Image.asset('images/dice$secondNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}

