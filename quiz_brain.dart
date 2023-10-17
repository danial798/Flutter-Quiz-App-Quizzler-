// quiz_brain.dart
import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet', a: true),
    Question(q: 'A slug\'s blood is green', a: true),
    Question(q: 'Sharks are mammals', a: false),
    Question(
        q: 'The blue whale is the biggest animal to have ever lived', a: true),
    Question(q: 'Mount Everest is the tallest mountain in the world', a: true),
    Question(q: 'The human body has four lungs', a: false),
    Question(
        q: 'The average human sneeze can be clocked at 100 miles an hour',
        a: true),
    Question(q: 'Infants have more bones than adults', a: true),
    Question(q: 'The human body is about 60% water', a: false),
    Question(
        q: 'The letter "T" is the most common in the English Language',
        a: true),
    Question(
        q: 'The Harry Potter film, Chamber of Secrets, is the longest film of the Harry Potter movies',
        a: true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return _questionBank[_questionNumber].question;
  }

  bool getAnswer() {
    return _questionBank[_questionNumber].answer;
  }
}
/*

import 'dart:ffi';
import 'questions.dart';
import 'main.dart';

class QuizBrain {
  // Creating a New Question Object using Class , Constructor and their Variables and wrapping them in a list and naming it QuestionBank
  // First , A class is created , then an Object is created , the the objects are used later
  // Classes are the Blueprint , Objects are the Implementation
  // Class has properties / variables
  // Methods are functions of a Class
  // Creating an Object 'jenny' from 'Human' Class from Class E.g '2' :
  // Human jenny = Human(20);
  // print(jenny.height);
  // jenny.talk('why is the sky blue')

  int _questionNumber = 0;

  // Adding '_' before QuestionBank to make it private to this class only and refrain any other file or class from accessing / changing its purpose later
  List<Question> _QuestionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet', a: true),
    Question(q: 'A slug\'s blood is green', a: true),
    Question(q: 'Sharks are mammals', a: false),
    Question(
        q: 'The blue whale is the biggest animal to have ever lived', a: true),
    Question(q: 'Mount Everest is the tallest mountain in the world', a: true),
    Question(q: 'The human body has four lungs', a: false),
    Question(
        q: 'The average human sneeze can be clocked at 100 miles an hour',
        a: true),
    Question(q: 'Infants have more bones than adults', a: true),
    Question(q: 'The human body is about 60% water', a: false),
    Question(
        q: 'The letter "T" is the most common in the English Language',
        a: true),
    Question(
        q: 'The Harry Potter film, Chamber of Secrets, is the longest film of the Harry Potter movies',
        a: true)
  ];

  // Creating a Fucntion to cgeck whether there is a Question avaialble next or not
  void nextQuestion()
  {
    if (_questionNumber < _QuestionBank.length - 1)
      {
        _questionNumber++;
      }
  }

  // craeting a Function to get Question
  String getQuestion() {
    return _QuestionBank[_questionNumber].question;
  }

  // craeting a Function to get Answer
  String getAnswer() {
    return _QuestionBank[_questionNumber].answer;
  }
}

*/
