import 'package:flutter/material.dart';
import 'package:grocery_store_app_ui_design/screens/splash_screen.dart';

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      theme: buildThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
      textTheme: TextTheme(
        titleLarge: TextStyle(
            color: Colors.blue,
            fontSize: 35,
            fontWeight: FontWeight.bold
        )
      )
    );
  }
}