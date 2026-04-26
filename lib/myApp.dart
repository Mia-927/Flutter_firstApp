import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: Row(
            children:[
              //1st box
              Container(
                height: 200,
                width: 200,
                color: Colors.deepPurple,
              ),

              //2st box
              Container(
                height: 200,
                width: 200,
                color: Colors.deepPurple[400],
              ),

              //3st box
              Expanded(
                child: Container(
                width: 200,
                color: Colors.deepPurple[200],
                ),
              ),

            ],
        ),
      ),
    );
  }
}