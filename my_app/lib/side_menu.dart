import 'package:flutter/material.dart';


/*main()
{
  final drawer = Drawer(
    child: SideMenu(),
  );

  final scaffold = Scaffold(
    appBar: AppBar(
      title: Text('テスト'),
    ),

    drawer: drawer,

    body: Center(
      child: Text('main menu'),
    ),
  );
  
  
  runApp(
  MaterialApp(
    home: scaffold,
  ),
);
}*/

class  SideMenu extends StatelessWidget{
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context){
  return ListView(
    children: [
      DrawerHeader(
        child: 
        Text('ドロワーヘッダー'),
        ),

          ListTile(
            title: Text('リスト一番上！'),
            onTap:(){
            debugPrint('最初のタイルタップ済み');
          },
          ),
          
          ListTile(
            title: Text('リストど真ん中'),
            onTap:(){
            debugPrint('真ん中のタイルタップ済み');
          },
          ),

          ListTile(
            title: Text('リスト最後！'),
            onTap:(){
            debugPrint('最後のタイルタップ済み');
          },
        ),
      ],
    );
  }
}