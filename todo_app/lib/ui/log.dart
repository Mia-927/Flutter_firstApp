import 'package:flutter/material.dart';
import 'package:todo_app/appStorage.dart';
import 'chat.dart';
import 'todo.dart';
import 'package:todo_app/data/todo_data.dart';

class LogUI extends StatefulWidget{
  const LogUI({super.key, required this.appStorage});
  final AppStorage appStorage;

  @override
  State<LogUI> createState() => _LogState();
}

class _LogState extends State<LogUI>{
  DateTime selectedDate = Dates.now;
  double todoX = 12;
  double todoY = 80;
  int selectedChatIndex = 0;

  @override
  Widget build(BuildContext context){ 
    final allDates = {
      ...widget.appStorage.chats.map((chat) => Dates.hour(chat.createdDate)),
      ...widget.appStorage.chats.expand((chat) => chat.todos.map((todo) => Dates.hour(todo.createdDate)))
    }.toList()..sort();

    return Scaffold(
      appBar: AppBar(
        title: const Text("ログ"),
      ),
      drawer: Drawer(
        child:ListView.builder(
          itemCount: widget.appStorage.chats.length,
          itemBuilder:(context, index){
            final chat = widget.appStorage.chats[index];
            final date = allDates[index];
            return ListTile(
              leading: Icon(Icons.book),
              title: Text(Dates.format(chat.createdDate)),
              subtitle: Text("Study log"),
              selected: selectedChatIndex == index,
              onTap: (){
                setState((){
                  selectedChatIndex = index;
                });
                Navigator.pop(context);
              },
            );
          }
        )
      ),
      body: Stack(
        children:[
          ChatUI(
            appStorage: widget.appStorage, 
            selectedChatIndex: selectedChatIndex,
            onNewChat: (){
              setState((){
                selectedDate = Dates.now;
                selectedChatIndex = widget.appStorage.chats.length - 1;
              });
            }
          ),
          ToDoOverlay(),
        ],
      )
    );
  }
//ToDo FloatingWidget
Widget ToDoOverlay(){
  return Positioned(
    left: todoX,
    top: todoY,   
    child: GestureDetector(
      onPanUpdate: (details){
        setState((){
          todoX = (todoX + details.delta.dx).clamp(0.0, MediaQuery.of(context).size.width - 250);
          todoY = (todoY + details.delta.dy).clamp(0.0, MediaQuery.of(context).size.height - 300);
        });
      },
      child: Container(
        width: 250, height: 300, 
        color: Colors.purple.withValues(alpha: 0.5),
        child: ToDoUI(
          todos: widget.appStorage.chats.isEmpty
          ? []
          : widget.appStorage.chats[selectedChatIndex].todos),
      ),
    ),
  );
}
}