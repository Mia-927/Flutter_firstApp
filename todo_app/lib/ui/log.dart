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