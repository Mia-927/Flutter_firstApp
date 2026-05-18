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
  //late final ChatUI chatUI;

  @override
  Widget build(BuildContext context){ 
    final allDates = {
      ...widget.appStorage.chats.map((chat) => chat.createdDate),
      ...widget.appStorage.todos.map((todo) => todo.createdDate)
    }.toList()..sort();
    
    selectedDate = allDates.isNotEmpty
      ? allDates.last
      : Dates.now;
    return Scaffold(
      appBar: AppBar(
        title: const Text("ログ"),
      ),
      drawer: Drawer(
        child: SizedBox(
            width:120, 
            child: ListView.builder(
              itemCount: allDates.length,
              itemBuilder:(context, index){
                final date = allDates[index];
                return ListTile(
                  leading: Icon(Icons.book),
                  title: Text(Dates.format(date)),
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
        )
      ),
      body: Stack(
        children:[
          ChatUI(appStorage: widget.appStorage),
          ToDoOverlay(),
        ],
      )
    );
  }

@override
void initState(){
  super.initState();
  final allDates = {
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
  }
}

//ToDo FloatingWidget
Widget ToDoOverlay(){
  return Positioned(
    left: todoX,
    top: todoY,   
    child: GestureDetector(
      onPanUpdate: (details){
        setState((){
          todoX = (todoX + details.delta.dx).clamp(0, 300);
          todoY = (todoY + details.delta.dy).clamp(0, 600);
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