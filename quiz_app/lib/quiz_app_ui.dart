import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizAppUi extends StatelessWidget {
   QuizAppUi( this.questionScreen, {super.key});
  Function() questionScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset('assets/images/quiz-logo.png', width: 300, color: Color.fromARGB(150, 250, 250, 250),)),
        const SizedBox(
          height: 80,
        ),
        Text(
          'Learn Flutter the fun way!',
          style: TextStyle(fontSize: 24, color: Color.fromARGB(220, 250, 250, 250),),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          onPressed: questionScreen,
          icon: Icon(Icons.arrow_right_alt),
          label: Text(
            'Start Quiz',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
