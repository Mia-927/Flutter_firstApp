import 'package:flutter/material.dart';

/*main(){
  const app = MaterialApp(home: Home());
  runApp(app);
}*/
//flutter run -d emulator-5554
class Carousel{
  //名前
  final String name;
  //アイコン画像
  final String iconUri;
  //コンストラクタ
  Carousel(this.name, this.iconUri);
}
//カードにしたいモデル
final models = [
  Carousel('ナリタブライアン', '23867720.png'),
  Carousel('スペシャルウィーク', 'IMG_3931.JPG'),
  Carousel('オグリキャップ', 'kurone_icon.png'),
];
//カーソルカードたち
class CarouselCards extends StatelessWidget{
  const CarouselCards({super.key, required this.model});
  final Carousel model;

  @override
  Widget build(BuildContext context){
    //
    final img = SizedBox(
      height: 100,
      child: Container(//Image.asset('assets/image/${model.iconUri}'),
      height: 100,
      color: Colors.blue,
     ),

    );
    //名前
    final text = Text(model.name, style: const TextStyle(fontSize: 20));
    //画像・名前並べる
    final imgText = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [img, text],
    );
    //カード部分のコンテナ
    return Container(
      height: 180,
      width: 200,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.orange,
        //角丸
        borderRadius: BorderRadius.circular(20),
        //影
        boxShadow:[
          BoxShadow(
            //影の設定
            color: Colors.black.withValues(alpha: 0.2),
            spreadRadius: 2,//広がりの大きさ
            blurRadius: 2,//ぼかしの強さ
            offset: const Offset(0, 2),//方向
          ),
        ],
      ),
      child: imgText,
    );
  }
}
//モデル　＝＞　ウィジェットに変換
Widget modelToWidget(Carousel model){
  return Container(
    //ページ
    padding: const EdgeInsets.all(10),
    child: CarouselCards(model: model),
  );
}
class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
          height: 260,
          color: Colors.grey,
          child: 
          PageView.builder(
            controller: PageController(viewportFraction: 0.8),
            physics: const BouncingScrollPhysics(),
            // ここに追加
            onPageChanged: (i) {
              print("changed: $i");
            },
            itemCount: models.length,
            itemBuilder: (c, i) {
              debugPrint('index: $i');
              return modelToWidget(models [i]);
            }
          ),
        ),
    );
  }
}