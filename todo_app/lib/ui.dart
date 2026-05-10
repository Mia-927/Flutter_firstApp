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
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 192, 129, 237), title: Text("ToDo")),
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
                _todoLst.add(ToDo(controller.text, false));
                controller.clear();
              });
              FocusScope.of(context).unfocus();
            }
        ),
        //チェックボックス
        Expanded(
          child: ListView.builder(
            itemCount: _todoLst.length,//リストの数だけUI作る
            itemBuilder: (context, index){//1個ずつ作る関数
              return Dismissible(
                key: UniqueKey(),
                onDismissed: (direction){//スワイプする方向（右→左）
                  setState((){
                    _todoLst.removeAt(index);
                  });
                },
                child:ListTile(//UI
                leading: Checkbox(
                value: _todoLst[index].getCheck(),//なんで？
                onChanged: (value) {//チェック変更
                  setState((){
                    _todoLst[index].checked = value!;
                    
                     //順番入れ替え
                     _todoLst.sort((a, b){//ここ問題あり
                      if(a.checked == b.checked) return 0;
                      if(a.checked) return 1;
                      return -1;
                     });
                  });
                },
                ),
                title:Text(
                  _todoLst[index].getText(),
                  style: TextStyle(
                    color: _todoLst[index].checked ? Colors.grey : Colors.black,
                    decoration: _todoLst[index].getCheck()
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                  )
                ), 
                trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState((){
                        _todoLst.removeAt(index);
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