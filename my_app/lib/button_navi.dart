import 'package:flutter/material.dart';
/*main(){
  
  runApp(
     ProviderScope(
      child: MaterialApp(home: Root()),
      ),
  );


}
//ぷとばいだー
final indexProvider = StateProvider((ref){
  //インデックス
  return 1;
},);

class Root extends ConsumerWidget{
  const Root({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref){
    final index = ref.watch(indexProvider);
    const items = [

    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'ItemA',
    ),

    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'ItemB',
    ),

    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'ItemC',
    ),
  ];
    final bar = BottomNavigationBar(
      items: items,
      backgroundColor: Colors.orangeAccent,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.white,
      currentIndex: index,

      onTap: (index) {
        //タップされたときインデックスも変わる
        ref.read(indexProvider.notifier).state = index;
      },
    );

    final pages =[
      PageA(),
      PageB(),
      PageC(),
    ];
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: bar,
    );
  }

 
}*/
class  PageA extends StatelessWidget{
  const PageA({super.key});
  Widget build(BuildContext context){
    return Container(
      color: Colors.red,
      child: 
        Center(
          child:
          Text('A画面だよ'),
        ),
    );
  }
}

class  PageB extends StatelessWidget{
  const PageB({super.key});
  Widget build(BuildContext context){
    return Container(
      color: Colors.blue,

      child: 
        Center(
          child:
          Text('B画面だよ'),
        ),
    );
  }
}

class  PageC extends StatelessWidget{
  const PageC({super.key});
  Widget build(BuildContext context){
    return Container(
      color: Colors.yellow,

      child: 
        Center(
          child:
          Text('C画面だよ'),
        ),
    );
  }
}