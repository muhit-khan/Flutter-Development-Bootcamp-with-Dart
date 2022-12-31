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
        child: SafeArea(
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
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Container(
                    color: Colors.yellow.shade900,
                  ),
                  onPressed: () {
                    print("Button 1 got pressed");
                  },
                ),
              ),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Container(
                    color: Colors.yellow.shade900,
                  ),
                  onPressed: () {
                    print("Button 1 got pressed");
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
