import 'package:flutter/material.dart';
import 'package:grocery_store_app_ui_design/screens/groceries_screen.dart';
import 'package:grocery_store_app_ui_design/utility/assets_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  Future _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const GroceriesScreen();
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetsPath.splashImage, height: 300,),
            const SizedBox(height: 45,),
            Text(
              'Buy Fresh Groceries',
              style: Theme.of(context).textTheme.titleLarge
            )
          ],
        ),
      ),
    );
  }
}
