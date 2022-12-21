import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flame_audio/flame_audio.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Body(),
      ),
    );
  }
}

void playNode(int n) {
  FlameAudio.play('note$n.wav');
}

class Body extends StatefulWidget {
  Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: TextButton(
        child: Text("Press Me"),
        onPressed: () {
          FlameAudio.play('note1.wav');
          print("Body got pressed");
        },
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flame_audio/flame_audio.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.amber,
                  ),
                  child: Expanded(
                    child: Container(
                      color: Colors.yellow.shade900,
                    ),
                  ),
                  onPressed: () {
                    FlameAudio.play('note1.wav');
                    print("Button 1 got pressed");
                  },
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow.shade800,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow.shade600,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow.shade400,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow.shade200,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow.shade100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

