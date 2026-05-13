import 'package:flutter/material.dart';
import 'ui/chat.dart';
import 'ui/todo.dart';
import 'ui/log.dart';
import 'data/todo_data.dart';
import 'data/chat_data.dart';
import 'data/log_data.dart';
void main() {
  runApp(const MyApp());
}
//アプリ本体
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget{
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreen();
}
class _MainScreen extends State<MainScreen>{

  int index = 1;
  final List<ChatData> chats = [];
  final List<ToDoData> todos = [];
  final Map<String, List<LogData>> logs = {};
  

  @override
  Widget build(BuildContext context){
  final List<Widget> _pages = [
    ChatUI(chats: chats),
    const Center(child: Text("Home"),),//home(仮)
    ToDoUI(todos: todos),
    LogUI(
      chats: chats,
      todos: todos,
      logs: logs,
      ),
  ];
  return Scaffold(
      body: _pages[index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          selectedItemColor: Colors.purple,
          unselectedItemColor: const Color.fromARGB(255, 213, 212, 212),
          backgroundColor: Colors.blue,
          onTap:(currentIndex){
            setState((){
              index = currentIndex;
            });
          },
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label:'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label:'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.check_box), label:'ToDo'),
            BottomNavigationBarItem(icon: Icon(Icons.sort), label:'Log'),
          ]
        ),
      
      
    );
  }
  
}