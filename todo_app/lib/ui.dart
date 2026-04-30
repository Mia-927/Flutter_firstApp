import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

 /*完了チェック（チェックボックス）
  完了したら見た目変える（取り消し線とか）
  タスク編集*/

class UI extends StatefulWidget {
  const UI({super.key});
  
   @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("ToDo")),
      body: Column(
        children: [
          TextField(
          decoration: InputDecoration(
            labelText:'ToDo',
            hintText: 'example: study',
          )
        ),
        
        ElevatedButton(
          onPressed: true, 
          child: Text('追加'),
        ),

        //controller: controller,
        Expanded(
          ListView.builder(
            child: ,
            itemCount: getTodo().length,
            itemBuilder: (context, index){
              return CheckboxListTile(
                onChanged: (value) {},
                value: false,//なんで？
                title:Text(todos[index]),
              ),
            }
          )
        )

        ]
        )
    )
    //controller.textでユーザーインプットが取れる！
    final controller = TextEditingController();
    
    

  }
}