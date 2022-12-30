import 'package:flutter/material.dart';

void main() => runApp(const Destiny());

class Destiny extends StatelessWidget {
  const Destiny({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Story Page',
      theme: ThemeData.dark(),
      home: StoryPage(),
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
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                "Story 0",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                print("Button 1 got pressed"),
              }
            ),
          ],
        ),
      ),
    );
  }
}

class callStory1 extends StatefulWidget {
  const callStory1({super.key});

  @override
  State<callStory1> createState() => _callStory1State();
}

class _callStory1State extends State<callStory1> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
