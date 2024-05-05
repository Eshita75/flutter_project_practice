import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xff22252D),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 200,
                color: Color(0xff22252D),
                padding: EdgeInsets.only(top: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                      "302 x 75",
                    ),
                    Text(
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45.0,
                        color: Colors.white,
                      ),
                      "22650",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff292D36),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("ac");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "AC",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                        (states) => Color(0xff26E8C6),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("+/-");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Icon(
                                CupertinoIcons.minus_slash_plus,
                                size: 30.0,
                                color: MaterialStateColor.resolveWith(
                                        (states) => Color(0xff26E8C6)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("%");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "%",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                        (states) => Color(0xff26E8C6),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("/");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Icon(
                                CupertinoIcons.divide,
                                size: 30.0,
                                color: MaterialStateColor.resolveWith(
                                        (states) => Color(0xffE78388)),
                              ),
                            ),
                          ),
                        ],
                      ),
//New Changes happen below👇
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("7");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "7",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("8");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "8",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("9");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "9",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("x");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Icon(
                                CupertinoIcons.multiply,
                                size: 30.0,
                                color: MaterialStateColor.resolveWith(
                                        (states) => Color(0xffE78388)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("4");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "4",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("5");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "5",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("6");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "6",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("-");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Icon(
                                CupertinoIcons.minus,
                                size: 30.0,
                                color: MaterialStateColor.resolveWith(
                                        (states) => Color(0xffE78388)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("1");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("2");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("3");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "3",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("+");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Icon(
                                CupertinoIcons.plus,
                                size: 30.0,
                                color: MaterialStateColor.resolveWith(
                                        (states) => Color(0xffE78388)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("reset");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Icon(
                                CupertinoIcons.restart,
                                size: 30.0,
                                color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("0");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "0",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print(".");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                ".",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("=");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Icon(
                                CupertinoIcons.equal,
                                size: 30.0,
                                color: MaterialStateColor.resolveWith(
                                        (states) => Color(0xffE78388)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}