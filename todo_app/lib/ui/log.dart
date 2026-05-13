import 'package:flutter/material.dart';
import '../data/chat_data.dart';
import '../data/todo_data.dart';
import '../data/log_data.dart';

class LogUI extends StatefulWidget{
  const LogUI({super.key,
    required this.chats,
    required this.todos,
    required this.logs,
    //required this.dates,
  });
  final List<ChatData> chats;
  final List<ToDoData> todos;
  final Map<String, List<LogData>> logs;
  //final List<String> dates;
  @override
  State<LogUI> createState() => _LogState();
}

class _LogState extends State<LogUI>{
  String selectedDate = "今日";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ログ"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              tileColor: Colors.white,
              splashColor: Colors.purpleAccent,
              
              title: Text(selectedDate),
              onTap: (){
                  setState((){
                    selectedDate = "選ばれし日付";
                });
              }
            ),
          ],
        ),
      ),
      body: ListView(
        children: const[
          ListTile(
            leading: Icon(Icons.book),
            title: Text("勉強ログ"),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("感情ログ"),
          ),
          ListTile(
            leading: Icon(Icons.check),
            title: Text("Todoログ"),
          ),
        ]
      ),
    );
  }
}