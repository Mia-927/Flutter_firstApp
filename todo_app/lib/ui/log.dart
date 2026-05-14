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
  final today = DateTime.now().toString().split(" ")[0];
  final logs = widget.appStorage.logs[today] ?? [];
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
      body: ListView.builder(
        itemCount: logs.length,
        itemBuilder:(context, index){
          if(logs.isEmpty){
            return Center(child: Text("ログなし"));
          }
          final log = logs[index];
          return ListTile(
            leading: Icon(Icons.book),
            title: Text(log.title),
            subtitle: Text(log.content),
          );
        }
      ),
    );
  }
}