import 'package:flutter/material.dart';

import 'gradient_container.dart';

main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [Color.fromARGB(190, 216, 162, 17),Color.fromARGB(
            190, 18, 149, 149) ],)
      ),
    ),
  );
}


