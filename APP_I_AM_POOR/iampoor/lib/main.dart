//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 120, 164, 122),
        appBar: AppBar(
          title: Center(
            child: Text(
              "I AM POOR",
            ),
          ),
          backgroundColor: Color.fromARGB(255, 1, 84, 44),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/poor.png'),
          ),
        ),
      ),
    );
  }
}
