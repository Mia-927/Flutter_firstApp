import 'package:flutter/material.dart';
/*チャット画面を作ろう！！
　１．色を変える
　２．ボタン追加
　３．テキストボックス追加　「スタート！！」
　４．返信出す（データファイルで）

　終わったら、ログ、時計とか？
*/
class Chat extends StatelessWidget{
  const Chat({super.key});
  //保留だけど取りあえず作る
  //String title = "";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("チャット画面", style: TextStyle(color: Color.fromARGB(255, 252, 239, 250)))),
      body: Container( 
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 216, 234, 246),
        child: Column(//チャットボックス
          mainAxisAlignment: MainAxisAlignment.end,
          children:[
            Expanded(child: chatLst()),
            Align(
              alignment: Alignment.bottomCenter,
              child: chatInput()
              ),
          ]
        ) 
      )
    );
  }
  //入力画面
  Widget chatInput(){
    return Container(
              padding: const EdgeInsets.only(
                        left: 8,
                        right: 8,
                        bottom: 50,
              ),
              child: TextField(
                  //controller: controller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 212, 179, 255),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  )//この色どうやって変えるんだ？ってかどうやってメインで呼べばいいのか分からん
                )
              ),
              );
  }
  //AIチャット
  Widget aiChat(){
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
      color: const Color.fromARGB(255, 190, 200, 254),
      borderRadius: BorderRadius.circular(12),),//丸める
  
    child:Text("ちわっす.これはAI側だよん",
      style: TextStyle(color: const Color.fromARGB(255, 0, 24, 52),),), 
    );
  }
  //ユーザーチャット
  Widget userChat(){
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
      color: const Color.fromARGB(255, 255, 218, 255),
      borderRadius: BorderRadius.circular(12),),//丸める           
    child:Text("にんまり",
      style: TextStyle(color: const Color.fromARGB(255, 46, 17, 59),),), 
    );
  }

  //チャットリスト
  Widget chatLst(){
    return ListView(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: aiChat(),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: userChat(),
        ),
        ],
    );
  }
}
