import 'package:flutter/material.dart';
import 'package:todo_app/appStorage.dart';
import 'chat.dart';
import 'todo.dart';

class LogUI extends StatefulWidget{
  const LogUI({super.key, required this.appStorage});
  final AppStorage appStorage;

  @override
  State<LogUI> createState() => _LogState();
}

class _LogState extends State<LogUI>{
  late DateTime selectedDate;
  late ChatUI chatUI;
  double todoX = 12;
  double todoY = 80;

  @override
  Widget build(BuildContext context){ 
    final allDates = {
      ...widget.appStorage.chats.map((chat) => Dates.hour(chat.createdDate)),
      ...widget.appStorage.todos.map((todo) => Dates.hour(todo.createdDate))
    }.toList()..sort();

    return Scaffold(
      appBar: AppBar(
        title: const Text("ログ"),
      ),
      drawer: Drawer(
        child:ListView.builder(
          itemCount: allDates.length,
          itemBuilder:(context, index){
            final date = allDates[index];
            return ListTile(
              leading: Icon(Icons.book),
              title: Text(Dates.format(date)),//
              subtitle: Text("Study log"),
              selected: Dates.isSameDay(selectedDate, date),
              onTap: (){
                setState((){
                  selectedDate = date;
                });
                Navigator.pop(context);
              },
            );
          }
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
  selectedDate = Dates.now;
  chatUI = ChatUI(appStorage: widget.appStorage);
  /*final allDates = {
      ...widget.appStorage.chats.map((chat) => chat.createdDate),
      ...widget.appStorage.todos.map((todo) => todo.createdDate)
    }.toList()..sort();
    
    selectedDate = allDates.isNotEmpty
      ? allDates.last
      : Dates.now;
  final dates = widget.appStorage.chats
    .map((chat) => chat.createdDate).toSet().toList();

  if(dates.isNotEmpty){
    dates.sort();
    selectedDate = dates.last;
  }
  else{
    selectedDate = dates.isNotEmpty ? dates.last : Dates.now;
  }*/
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
        child: ToDoUI(appStorage: widget.appStorage, selectedDate: selectedDate),
      ),
    ),
  );
}
}