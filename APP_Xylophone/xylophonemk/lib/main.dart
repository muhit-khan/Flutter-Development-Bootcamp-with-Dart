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
        backgroundColor: Colors.brown,
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Center(
            child: const Text(
              'Xylophone M K',
              style: TextStyle(
                fontFamily: 'LT_Highlight',
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
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
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Expanded(
                    child: Container(
                      color: Colors.yellow.shade800,
                    ),
                  ),
                  onPressed: () {
                    FlameAudio.play('note2.wav');
                    print("Button 2 got pressed");
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Expanded(
                    child: Container(
                      color: Colors.yellow.shade600,
                    ),
                  ),
                  onPressed: () {
                    FlameAudio.play('note3.wav');
                    print("Button 3 got pressed");
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Expanded(
                    child: Container(
                      color: Colors.yellow.shade400,
                    ),
                  ),
                  onPressed: () {
                    FlameAudio.play('note4.wav');
                    print("Button 4 got pressed");
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Expanded(
                    child: Container(
                      color: Colors.yellow.shade200,
                    ),
                  ),
                  onPressed: () {
                    FlameAudio.play('note5.wav');
                    print("Button 5 got pressed");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
