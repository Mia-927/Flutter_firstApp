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
        title: const Text("チャット画面", style: TextStyle(color: Colors.lightBlueAccent))),
      body: Container( 
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(//チャットボックス
          mainAxisAlignment: MainAxisAlignment.end,
          children:[
            const TextField(
                //controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.greenAccent,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                )//この色どうやって変えるんだ？ってかどうやってメインで呼べばいいのか分からん
              )
            ),
            Expanded(child: Container(
              padding: const EdgeInsets.all(10),//中の余白
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),//余白
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(12),//丸める
              ),
              child: const Text("ちわっす",style: TextStyle(color: Colors.yellow,),),
            ),)
          ]
        ) 
      )
    );
  }
}