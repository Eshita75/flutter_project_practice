import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/quiz_app_intro_screen.dart';
import 'package:quiz_app/quiz_app_ui.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  var activeScreen = 'start-screen';

  switchScreen(){
    setState(() {
      activeScreen = 'question_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color.fromARGB(190, 138, 8, 205),
                Color.fromARGB(190, 68, 9, 106),])
          ),
          child: activeScreen == 'start-screen' ? QuizAppUi(switchScreen) : QuestionScreen(),
        )
      ),
    );
  }
}
