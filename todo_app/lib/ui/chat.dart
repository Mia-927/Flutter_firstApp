import 'package:flutter/material.dart';
import '../data/chat_data.dart';
import 'package:todo_app/appStorage.dart';
/*チャット画面を作ろう！！
　１．色を変える
　２．ボタン追加
　３．テキストボックス追加　「スタート！！」
　４．返信出す（データファイルで）

　終わったら、ログ、時計とか？
*/
class ChatUI extends StatefulWidget{
  const ChatUI({super.key, required this.appStorage});
  final AppStorage appStorage;
  
  @override
  State<ChatUI> createState() => _ChatState();
}

class _ChatState extends State<ChatUI>{
  final controller = TextEditingController();
  final scrollController = ScrollController();
  int chatIndex = 0;
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 164, 188, 229),
        title: const Text("チャット画面", style: TextStyle(color: Color.fromARGB(255, 252, 239, 250)))),
      
      body: Container( 
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 230, 243, 252),
        child: Column(//チャットボックス
          mainAxisAlignment: MainAxisAlignment.end,
          children:[
            Expanded(child: chatLst()),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //入力画面
                addButton(),
                Expanded(child: chatInput()),
              ]
            ),
          ]
        ) 
      ),
    );
  }

  //入力画面 //ここにiconも入ることになる。
  Widget chatInput(){
    return Container(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
        bottom: 10,
      ),
      child: TextField(
        controller: controller,

        minLines: 1,//最小の入力行
        maxLines: 4,

        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 255, 229, 255),
          hintText: "今日は何する？",
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 33, 222, 243),
            ),
          ),
          
          suffixIcon: icon(),//送信ボタンの埋め込み
        ),
      ),
    );
  }
  //チャットリスト
  Widget chatLst(){
    if(widget.appStorage.chats.isEmpty){
      return Center(child: Text("New Chat"));
    }
    return ListView(
      controller: scrollController,
      children: widget.appStorage.chats[chatIndex].messages.map((message){
        return Align(//マップの中のリターン
          alignment: message.isAI
          ?Alignment.centerLeft
          :Alignment.centerRight,

          child: 
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 6,
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
  //Icon送信ボタン AIとかもここ
  Widget icon(){
    return// ButtonNavigationBarItem()
      IconButton( 
        icon: const Icon(Icons.send),
        onPressed: () {
          if(widget.appStorage.chats.isEmpty){
            widget.appStorage.chats.add(ChatData(
              title: "New Chat",
              messages: [],
            ),);
            chatIndex = 0;
          }
          setState(() {
            //ユーザー
            widget.appStorage.chats[chatIndex].messages.add(//messageリストに追加！！
              ChatText(
                text: controller.text, 
                isAI: false
            ));

            //AI返信枠
            final replies = ["いいね", "なるほど", "わかる", "それいい"];
            final ai = replies[DateTime.now().millisecond % replies.length];
            
            widget.appStorage.chats[chatIndex].messages.add(
              ChatText(text: "AI: $ai", isAI: true));//AI側だぜ！
            /*messages.add(//messageリストに追加！！
              ChatText(
                text: "AI: $ai", 
                isAI: true,
            ));*/
        });
            controller.clear();//内容消去
            
        Future.delayed(const Duration(milliseconds: 50),(){
          scrollController.jumpTo(
            scrollController.position.maxScrollExtent,
          );
        });},
    );
  }
  //+マーク
  Widget addButton(){
    return TextButton(//+マーク
    
      onPressed: (){
        showModalBottomSheet(//ボタン押したら実行
          context: context,
          builder:(context){
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListTile(title: Text("新テーマ！")),//それぞれ画面にPopで文字出すけど保存は同じ
                ListTile(title: const Text("新チャット！"),
                  onTap: (){
                    setState((){
                      widget.appStorage.chats.add(ChatData(
                        title: "New Chat",
                        messages: [],
                      ),);
                      chatIndex = widget.appStorage.chats.length - 1;
                    });
                    Navigator.pop(context);
                  }),
                ListTile(title: Text("次の日！")),
              ],
            );
          },
        );
      },
        child: Icon(Icons.add),
      );
  }
}
