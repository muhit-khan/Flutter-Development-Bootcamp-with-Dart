import 'package:flutter/material.dart';

void main() {
  runApp(const QuizlerMK());
}

class QuizlerMK extends StatelessWidget {
  const QuizlerMK({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizler MK',
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: QuizePage(),
        ),
      ),
    );
  }
}

class QuizePage extends StatefulWidget {
  const QuizePage({super.key});

  @override
  State<QuizePage> createState() => _QuizePageState();
}

class _QuizePageState extends State<QuizePage> {
  int qs_no = 0;
  List<Icon> ScoreKeeper = [];
  List<String> Question = [
    'The atomic number for lithium is 17',
    'A cross between a horse and a zebra is called a Hobra',
    'The black box in a plane is black',
    'Alliumphobia is a fear of garlic',
    'Sex Education star Gillian Anderson was born in Chicago, Illinois',
    'Prince Harry is taller than Prince William',
    'The star sign Aquarius is represented by a tiger',
    'Meryl Streep has won two Academy Awards',
    'Marrakesh is the capital of Morocco',
    'Idina Menzel sings let it go 20 times in Let It Go from Frozen'
  ];
  List<bool> Answer = [
    false,
    false,
    false,
    true,
    true,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Text(
              Question[qs_no],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: 'Source_Sans_Pro',
              ),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 17, 108, 20),
                ),
                child: Text(
                  'True',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'LT_Highlight',
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                onPressed: () {
                  if (Answer[qs_no] == true) {
                    setState(
                      () {
                        qs_no++;
                        ScoreKeeper.add(
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        );
                      },
                    );
                  } else {
                    setState(
                      () {
                        qs_no++;
                        ScoreKeeper.add(
                          Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        );
                      },
                    );
                  }
                  print("TRUE Button got pressed");
                },
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Text(
                  'False',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'LT_Highlight',
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                onPressed: () {
                  if (Answer[qs_no] == false) {
                    setState(
                      () {
                        qs_no++;
                        ScoreKeeper.add(
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        );
                      },
                    );
                  } else {
                    setState(
                      () {
                        qs_no++;
                        ScoreKeeper.add(
                          Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        );
                      },
                    );
                  }
                  print("FALSE Button got pressed");
                },
              ),
            ),
          ],
        ),
        Row(
          children: ScoreKeeper,
        ),
      ],
    );
  }
}
