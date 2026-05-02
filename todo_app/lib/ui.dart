import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'todo.dart';
 /*完了チェック（チェックボックス）
  完了したら見た目変える（取り消し線とか）
  タスク編集*/

class UI extends StatefulWidget {
  const UI({super.key});
  
  @override
  State<UI> createState() => _UIState();
}
class _UIState extends State<UI>{
  @override
  List<ToDo> _todoLst = [];//ここ分からんどっかで入力したい
  final controller = TextEditingController();

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("ToDo")),
      body: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText:'ToDo',
              hintText: 'example: study',
            )
        ),
        
        ElevatedButton(
          child: Text("追加"),//ここもいまいち
          onPressed:(){
           setState(()
            {
              _todoLst.add(ToDo(controller.text, false));
            });
          }
          
        ),

        //controller: controller,
        Expanded(
          child: ListView.builder(
            itemCount: _todoLst.length,
            itemBuilder: (context, index){
              return CheckboxListTile(
                onChanged: (value) {
                  setState((){
                    _todoLst[index].checked = value!;
                  });
                },
                value: _todoLst[index].getCheck(),//なんで？
                title:Text(_todoLst[index].getText()),
              );
            }
          )
        )

        ]
        )
    );
    //controller.textでユーザーインプットが取れる！
    //
    
    

  }
}