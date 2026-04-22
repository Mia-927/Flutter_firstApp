import 'package:flutter/material.dart';


class CatCounter extends StatelessWidget{
  const CatCounter({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    //猫画像    
    final img = Image.asset(
      'C:\Users\miami\OneDrive\Pictures\kurone icon.png',
       width: 100,
       height: 100,
       );
    const txt = Text(
      '101',
      style: const TextStyle(
        color: Colors.purple,
        fontSize: 100,
      ),
    );
    //横並び
    final row = Row(
      children:[
        img,
        txt,
     ],
     );
     //色と大きさ決め
     final con = Container(
      color: Colors.black87,
      child: row,
     );
     //表示するWidgetを決める
     return con;
  }
  
}