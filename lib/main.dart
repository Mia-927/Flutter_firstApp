

import 'package:flutter/material.dart';
import 'package:my_app/cat_counter.dart';

/*void main(){
  const c = CatCounter();

}*/

void main() {
    runApp(const MaterialApp
    (
      home: Scaffold(
        body: Center(
          child: CatCounter(),
        ),
      ),
    ));
}

/*class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          title: Text("My App Bar"),
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          leading: Icon(Icons.logout),
          actions: [
            IconButton(
              onPressed: () {},
             icon: Icon(Icons.logout),
            ),
          ],
        ),
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
            child: Icon(
                    Icons.favorite,
                    color:Colors.white,
                    size: 64,
                   )
          ),
        )
        body: Column(

        )
      ),
    );
  }
}*/