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
  late DateTime selectedDate;
  double todoX = 12;
  double todoY = 80;
  late final ChatUI chatUI;

  @override
  Widget build(BuildContext context){
    //左側の日付
    final chatDates = widget.appStorage.chats
      .map((chat) => chat.createdDate).toSet().toList();
    final todoDates = widget.appStorage.todos
      .map((todo) => todo.createdDate).toSet().toList();
    final dates = {...chatDates, ...todoDates}.toList()..sort();
    //右側のToDo
    final selectedToDos = widget.appStorage.todos
      .where((todo) => Dates.isSameDay(todo.createdDate, selectedDate)).toList();
    //ついでのchats
    final selectedChats = widget.appStorage.chats
      .where((chat) => Dates.isSameDay(chat.createdDate, selectedDate)).toList();

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
                  title: Text(date.toString().split(" ")[0]),
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
          chatUI,
          ToDoOverlay(),
        ],
      )
    );
  }

@override
void initState(){
  super.initState();
  chatUI = ChatUI(appStorage: widget.appStorage);
  final dates = widget.appStorage.chats
  .map((chat) => chat.createdDate).toSet().toList();

  if(dates.isNotEmpty){
    dates.sort();
    selectedDate = dates.last;
  }
  else{
    selectedDate = dates.isNotEmpty ? dates.last : Dates.now;
  }
}

//ToDo FloatingWidget
Widget ToDoOverlay(){
  return Positioned(
    left: todoX,
    top: todoY,   
    child: Draggable(
      feedback: Material(
        child: Container(width: 200, height: 200, color: Colors.purple,),
      ),
      child: Container(
        width: 250, height: 300, 
        color: const Color.fromARGB(255, 248, 205, 255).withValues(alpha: 0.8),
        child: ToDoUI(appStorage: widget.appStorage, selectedDate: selectedDate),
      ),
      onDragEnd: (details){
        setState((){
          todoX = details.offset.dx;
          todoY = details.offset.dy;
        });
      },
    ),
  );
}
}