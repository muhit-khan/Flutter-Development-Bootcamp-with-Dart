import 'package:flutter/material.dart';

void main() => runApp(const Destiny());

class Destiny extends StatelessWidget {
  const Destiny({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Story Page',
      theme: ThemeData.dark(),
      home: StoryPage(),
      ),
    );
  }
}
