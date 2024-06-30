
import 'package:flutter/material.dart';


main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Hello World',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page', style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Container(
            width: 190,
            height: 150,
            padding: EdgeInsets.only(top: 40),
            child: Center(
              child: Image.asset('images/logo.png'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'UserName',
                  hintText: "Enter a valid email id"
              ),
            ),
          ),

          SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter your password'
              ),
            ),
          ),

          SizedBox(height: 5,),

          TextButton(
            onPressed: () {},
            child: Text(
              'Forgot Password',
              style: TextStyle(color: Colors.blue),
            ),
          ),

          SizedBox(height: 5,),

          Container(
            width: 200,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              onPressed: (){}, child: Text('Login',
              style: TextStyle(color: Colors.white, fontSize: 18),),
            ),
          )
        ],
      ),
    );
  }
}
