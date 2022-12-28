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

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}