import 'package:flutter/material.dart';
import 'chart_data.dart';
/*チャット画面を作ろう！！
　１．色を変える
　２．ボタン追加
　３．テキストボックス追加　「スタート！！」
　４．返信出す（データファイルで）

　終わったら、ログ、時計とか？
*/
class Chat extends StatefulWidget{
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat>{
  final controller = TextEditingController();
  List<ChatText> messages = [];
  final scrollController = ScrollController();

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
            Row(
              children: [
                Expanded(child: chatInput()),
                icon(),]
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
                controller: controller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 218, 255),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  )//この色どうやって変えるんだ？ってかどうやってメインで呼べばいいのか分からん
                )
              ),
              );
  }
  //チャットリスト
  Widget chatLst(){
    return ListView(
      controller: scrollController,
      children: messages.map((message){
        return Align(//マップの中のリターン
          alignment: message.isAI
          ?Alignment.centerLeft
          :Alignment.centerRight,

          child: 
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 8,
              ),
              margin: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: message.isAI
                  ?const Color.fromARGB(255, 190, 200, 254)
                  :const Color.fromARGB(255, 238, 218, 254),
                borderRadius: BorderRadius.circular(12),
              ),//丸める

            child: Text(message.text, //ここにmessage入れる！
              style: TextStyle(color: const Color.fromARGB(255, 0, 24, 52),),
            ), 
   
            ),
        );
      }
    ).toList(),);
  }

  //Icon
  icon(){
    return// ButtonNavigationBarItem()
      IconButton( 
        icon: const Icon(Icons.send),
        onPressed: () {
          setState(() {
            messages.add(ChatText(text: controller.text, isAI: false));//messageリストに追加！！

            //AI返信枠
            final replies = ["いいね", "なるほど", "わかる", "それいい"];
            final ai = replies[DateTime.now().millisecond % replies.length];
            
            messages.add(ChatText(text: "AI: $ai", isAI: true));//AI側だぜ！
            });
            controller.clear();//内容消去
            
        Future.delayed(const Duration(milliseconds: 50),(){
          scrollController.jumpTo(
            scrollController.position.maxScrollExtent,
          );
        });},
    );
  }
}
//
