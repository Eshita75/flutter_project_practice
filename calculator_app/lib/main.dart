import 'package:flutter/material.dart';

//import 'HomeScreen.dart';

import 'Home_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
