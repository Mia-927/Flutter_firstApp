import 'package:flutter/material.dart';
import 'package:todo_app/appStorage.dart';
import 'package:todo_app/data/todo_data.dart';
 /*完了チェック（チェックボックス）
  完了したら見た目変える（取り消し線とか）
  タスク編集*/

class ToDoUI extends StatefulWidget {
  const ToDoUI({super.key, required this.appStorage});
  final AppStorage appStorage;
  
  @override
  State<ToDoUI> createState() => _UIState();
}
class _UIState extends State<ToDoUI>{
  @override
  final controller = TextEditingController();
  final today = DateTime.now().toString().split(" ")[0];

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 192, 129, 237), 
        title: Text("ToDo")),
      body: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText:'ToDo',
              hintText: 'example: study',
            ),
          //ここもいまいち
            onSubmitted:(value){//ボタン押す
              if(controller.text.trim().isEmpty)
              {
                return;
              }
            setState(()//画面更新
              {
                widget.appStorage.todos.add(ToDoData(date: today,text: controller.text, checked: false));
                controller.clear();
              });
            FocusScope.of(context).unfocus();
            }
          ),
        //チェックボックス
          Expanded(
            child: ListView.builder(
              itemCount: widget.appStorage.todos.length,//リストの数だけUI作る
              itemBuilder: (context, index){//1個ずつ作る関数
                return Dismissible(
                  key: UniqueKey(),
                  onDismissed: (direction){//スワイプする方向（右→左）
                    setState((){
                      widget.appStorage.todos.removeAt(index);
                    });
                  },
                child:ListTile(//UI
                leading: Checkbox(
                value: widget.appStorage.todos[index].checked,//なんで？
                onChanged: (value) {//チェック変更
                  setState((){
                    widget.appStorage.todos[index].checked = value!;
                    
                     //順番入れ替え
                     widget.appStorage.todos.sort((a, b){//ここ問題あり
                      if(a.checked == b.checked) return 0;
                      if(a.checked) return 1;
                      return -1;
                     });
                  });
                },
                ),
                title:Text(
                  widget.appStorage.todos[index].text,
                  style: TextStyle(
                    color: widget.appStorage.todos[index].checked ? Colors.grey : Colors.black,
                    decoration: widget.appStorage.todos[index].checked
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                  )
                ), 
                trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState((){
                        widget.appStorage.todos.removeAt(index);
                    });
                  },
                ),
              )
              );
            }
          )
        )
        ]
      )
    );
  }
}