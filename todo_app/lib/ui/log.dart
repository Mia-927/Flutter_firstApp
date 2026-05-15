import 'package:flutter/material.dart';
import 'package:todo_app/appStorage.dart';

class LogUI extends StatefulWidget{
  const LogUI({super.key, required this.appStorage});
  final AppStorage appStorage;
  //final List<String> dates;
  @override
  State<LogUI> createState() => _LogState();
}

class _LogState extends State<LogUI>{
  late String selectedDate;

  @override
  Widget build(BuildContext context){
    //左側の日付
    final chatDates = widget.appStorage.chats
    .map((chat) => chat.date).toSet().toList();
    final todoDates = widget.appStorage.todos
    .map((todo) => todo.date).toSet().toList();
    final dates = {...chatDates, ...todoDates}.toList();
    //右側のToDo
    final selectedToDos = widget.appStorage.todos
    .where((todo) => todo.date == selectedDate).toList();
    //ついでのchats
    final selectedChats = widget.appStorage.chats
    .where((chat) => chat.date == selectedDate).toList();


    return Scaffold(
      appBar: AppBar(
        title: const Text("ログ"),
      ),
      drawer: Drawer(
        child: SizedBox(
            width:120, 
            child: ListView.builder(
              itemCount: dates.length,
              itemBuilder:(context, index){
                final date = dates[index];
                return ListTile(
                  leading: Icon(Icons.book),
                  title: Text(date),
                  subtitle: Text("Study log"),
                  selected: selectedDate == date,

                  onTap: (){
                    setState((){
                      selectedDate = date;
                    });
                    Navigator.pop(context);
                  },
                );
              }
            )
        )
      ),
      body: //右ToDo
        Card(
          margin: const EdgeInsets.all(12),
          child: Column(
            children:[
              //Todo画面
              const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "ToDo",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                ),
              ),
              Expanded(child: ListView.builder(
                itemCount: selectedToDos.length,
                itemBuilder: (context, index){
                  final todo = selectedToDos[index];
                  return ListTile(
                    leading: Checkbox(
                      value: todo.checked,
                      onChanged: null,
                    ),
                    title: Text(todo.text),
                  );
                }
              )),
            
              const Divider(),
              //Chat画面（ほぼToDoのコピペ）
              const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Chat",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                ),
              ),
              Expanded(child: ListView.builder(
                itemCount: selectedChats.length,
                itemBuilder: (context, index){
                  final chat = selectedChats[index];
                  return ListTile(
                    leading: const Icon(Icons.chat),
                    title: Text(
                      chat.messages.isNotEmpty? 
                      chat.messages.first.text
                      :"Empty Chat"),
                  );
                }
              )),
            
            ])
        ),
    );
  }


@override
void initState(){
  super.initState();

  final dates = widget.appStorage.chats
  .map((chat) => chat.date).toSet().toList();

  if(dates.isNotEmpty){
    dates.sort();
    selectedDate = dates.last;
  }else{
    selectedDate = "";
  }
}
}