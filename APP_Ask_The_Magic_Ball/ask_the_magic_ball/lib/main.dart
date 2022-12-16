import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          title: Text('Ask The Magic Ball'),
          backgroundColor: Colors.blue.shade500,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  //const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var BallNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset('images/ball$BallNumber.png'),
              onPressed: () {
                setState(() {
                  BallNumber = Random().nextInt(5) + 1;
                });
                print('Ball button got pressed.');
              },
            ),
          ),
        ],
      ),
    );
  }
}
