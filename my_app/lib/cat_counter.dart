import 'package:flutter/material.dart';

/*void main() {
    runApp(const MaterialApp
    (
      home: Scaffold(
        body: Center(
          child: CatCounter(),
        ),   ),  ));
}*/


class CatCounter extends StatelessWidget{
  const CatCounter({super.key});
  final int number;
  const CatCounter({super.key, required this.number});
  @override
  Widget build(BuildContext context){
    //猫画像    
    final img = Image.network(
        //'assets/image/kurone_icon.png',
        'https://picsum.photos/200'
        //width: 100,
        //height: 100,
       );
    const txt = Text(
      '$number',
      style: TextStyle(
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