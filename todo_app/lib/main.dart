import 'package:flutter/material.dart';
//
//import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'chat.dart';
import 'todo.dart';
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
  final List<Widget> _pages = [
    Chat(),
    //home(仮)
    const Center(child: Text("Home"),),
    ToDoUI(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _pages[index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap:(currentIndex){
            setState((){
              index = currentIndex;
            });
          },
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label:'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label:'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.check_box), label:'ToDo'),
          ]
        ),
      );
  }
  
}