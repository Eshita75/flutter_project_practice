import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
          leading: Icon(Icons.calculate),
        ),
        body:Container(
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,//Require the children to fill the cross axis.
            children: [
              Container(
                height: 240,
                color: Colors.green,
                padding: EdgeInsets.only(top: 150),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "302*75",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white
                      ),
                    ),

                    Text(
                      '23',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white
                      ),
                    )
                  ],
                ),
              ),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  foregroundColor: Colors.deepOrange),
                              onPressed: () {
                                print('ac');
                              },
                              child: Text(
                                'AC',
                                style:
                                    TextStyle(fontSize: 25, color: Colors.white),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                  foregroundColor: Colors.purple),
                              onPressed: () {
                                print('+/-');
                              },
                              child: Text(
                                '+/-',
                                style:
                                TextStyle(fontSize: 25, color: Colors.white),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  foregroundColor: Colors.purple),
                              onPressed: () {
                                print('%');
                              },
                              child: Text('%', style: TextStyle(fontSize: 25, color: Colors.white),)
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  foregroundColor: Colors.purple),
                              onPressed: () {
                                //print('ac');
                              },
                              child: Icon(CupertinoIcons.divide, color: Colors.white,)
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: TextButton(
                                style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                    Size(75.0 , 70.0)
                                  ),
                                  backgroundColor: MaterialStateProperty.all(Color(0xff272B34)),
                                ),
                                onPressed: (){
                              print('7');
                            }, child: Text('7', style: TextStyle(
                              fontSize: 24,color: Colors.white),)),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.green
                                ),
                                onPressed: (){
                                  print('8');
                                }, child: Text('8', style: TextStyle(
                                fontSize: 24,color: Colors.white),)),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.green
                                ),
                                onPressed: (){
                                  print('9');
                                }, child: Text('9', style: TextStyle(
                                fontSize: 24,color: Colors.white),)),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.green
                                ),
                                onPressed: (){
                                  print('X');
                                }, child: Icon(CupertinoIcons.multiply)
                            )
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.green
                                ),
                                onPressed: (){
                                  print('4');
                                }, child: Text('4', style: TextStyle(
                                fontSize: 24,color: Colors.white),)),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.green
                                ),
                                onPressed: (){
                                  print('5');
                                }, child: Text('5', style: TextStyle(
                                fontSize: 24,color: Colors.white),)),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.green
                                ),
                                onPressed: (){
                                  print('6');
                                }, child: Text('4', style: TextStyle(
                                fontSize: 24,color: Colors.white),)),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.green),
                              onPressed: () {
                                print('-');
                              },
                              child:Icon(CupertinoIcons.minus)
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.green
                                ),
                                onPressed: (){
                                  print('1');
                                }, child: Text('1', style: TextStyle(
                                fontSize: 24,color: Colors.white),)),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.green
                                ),
                                onPressed: (){
                                  print('2');
                                }, child: Text('2', style: TextStyle(
                                fontSize: 24,color: Colors.white),)),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.green
                                ),
                                onPressed: (){
                                  print('3');
                                }, child: Text('3', style: TextStyle(
                                fontSize: 24,color: Colors.white),)),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.green),
                                onPressed: () {
                                  print('+');
                                },
                                child:Icon(CupertinoIcons.plus)
                            ),
                          ),
                        ],
                      ),
                      
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: TextButton(onPressed: (){
                              print('reset');
                            },
                                child: Icon(CupertinoIcons.restart)),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: TextButton(onPressed: (){
                              print('0');
                            },
                                child: Text('0', style: TextStyle(fontSize: 25, color: Colors.white),)),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: TextButton(onPressed: (){
                              print('.');
                            },
                                child: Text('.', style: TextStyle(fontSize: 25, color: Colors.white))),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: TextButton(onPressed: (){
                              print('=');
                            },
                                child: Icon(CupertinoIcons.equal)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

}