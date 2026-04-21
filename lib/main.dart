

import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body:Center(
          child: Container(
            height: 300,
            width: 300,
            //Boxデコ
            decoration: BoxDecoration(
              color: Colors.blue[100],
              //curve the corner
              borderRadius:BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(25),//left:,topなど方向を決めることもできる
            child: Text("Fuck Yea!!"),
          ),
        )
      ),
    );
  }
}