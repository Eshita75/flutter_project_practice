import 'package:flutter/material.dart';

class QuizAppIntroScreen extends StatelessWidget {
  const QuizAppIntroScreen({super.key, required this.colors});

   final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors)
      ),
    );
  }
}