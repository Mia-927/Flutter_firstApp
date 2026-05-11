import 'package:flutter/material.dart';

class Log extends StatefulWidget{
  const Log({super.key});
  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log>{
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