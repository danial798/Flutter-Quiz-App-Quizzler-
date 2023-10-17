// main.dart
import 'package:flutter/material.dart';
import 'quiz_brain.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  QuizBrain quizBrain = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
              onPressed: () {
                bool correctAnswer = quizBrain.getAnswer();
                setState(() {
                  quizBrain.nextQuestion();
                  scoreKeeper.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool correctAnswer = quizBrain.getAnswer();
                setState(() {
                  quizBrain.nextQuestion();
                  scoreKeeper.add(
                    Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  );
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

/*

import 'dart:ffi';
import 'package:flutter/material.dart';
// Importing Questions file to use their Contents here
import 'quiz_brain.dart';
import 'questions.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // Creating a List / Array (same as in Python) which will be the Scorekeeper for Storing Scores and their right/wrong Widgets
  // Also Specify the type of list if it doesn't pick color in syntax editor
  // Lists Start Indexing from '0'
  List<Icon> ScoreKeeper = [
    /* Manually Adding icons
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ), */
  ];

  //  Creating a List of Questions in Strings to Display them one by one
  // List<String> Questions = ['You can lead a cow down stairs but not up stairs',
  // 'Approximately one quarter of human bones are in the feet',
  // 'A slug\'s blood is green'];

  bool CorrectAnswer = true;

  //  Creating a List of Answers in Booleans to check them one by one against Questions

  // List<bool> Answers = [false , true , true];

  // Creating a New Object which will enable us to use Question bank through QuizBrain Class
  QuizBrain quizBrain = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                // Passing Question Number to be Updated upon Click with Question Text
                quizBrain.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green, // Set the background color here.
              ),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
              onPressed: () {
                // Attempting to change the Answer to true everytime by Hard Coding and Avoiding it Through Encapsulation
                // quizBrain.QuestionBank[QuestionNumber].question = true;

                // Assigning Answer of Current Question's Answer to a Variable
                // Declaring correct answer as bool again
                 CorrectAnswer = quizBrain.getAnswer() as bool;
                setState(() {
                  // calling Function to check Question's limit
                  quizBrain.nextQuestion();
                  // Increasing Question Number whenever the Button is pressed
                  // Adding a New Icon to the List when button is Pressed and State is Changed                  ScoreKeeper.add(
                  ScoreKeeper.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                });
                // The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red, // Set the background color here.
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                CorrectAnswer = quizBrain.getAnswer() as bool;
                setState(() {
                  quizBrain.nextQuestion();
                  ScoreKeeper.add(
                    Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  );
                });
                // The user picked true.
              },
            ),
          ),
        ),
        // Adding a Row here as your score keeper
        Row(
          children: ScoreKeeper,
        )
      ],
    );
  }
}

 */
