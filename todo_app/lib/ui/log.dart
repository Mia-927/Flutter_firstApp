import 'package:flutter/material.dart';
import 'package:todo_app/appStorage.dart';
import 'chat.dart';
import 'todo.dart';
enum SortMode{
    date, theme, todo,
  }
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
      body: Stack(
        children:[
          ChatUI(appStorage: widget.appStorage,),
          ToDoOverlay(),
        ],
      )
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

//ToDo FloatingWidget
Widget ToDoOverlay(){
  return Positioned(
    right: 12,
    top: 80,
    child: Draggable(
      feedback: Material(
        child: Container(width: 200, height: 200, color: Colors.purple,),
      ),
      child: Container(
        width: 200, height: 200, 
        color: Colors.purpleAccent,
        child: Center(
          child: ToDoUI(appStorage: widget.appStorage,),
        )),
    ),
  );
}
}