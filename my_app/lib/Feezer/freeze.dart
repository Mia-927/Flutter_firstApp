import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'freeze.freezed.dart';

@freezed
class Freeze with _$Freeze{
  const factory Freeze({
    //名前
    required String name,
    //大きさ
    required int size,
    //値段
    required int price,
  }) = _Freeze;
}

/*main(){
  const app = MaterialApp(home: Home());
  const scope = ProviderScope(child: app);
  runApp(scope);
}*/

final freezeProvider = StateProvider((ref){
  return const Freeze(
    name: '冷凍',
    size: 200,
    price: 300,
  );
});

class Home extends ConsumerWidget{
  const Home({super.key});

  @override

  Widget build(BuildContext context, WidgetRef ref){
    //魚データ
    final freezer = ref.watch(freezeProvider);
    //名前テキスト
    final nameText = Text(
      '名前: ${freezer.name}'
    );
    //大きさテキスト
    final sizeText = Text(
      '大きさ: ${freezer.size} cm'
    );
    //値段テキスト
    final priceText = Text(
      '値段: ${freezer.price} 万円'
    );
    //ボタン
    final button = ElevatedButton(
      onPressed: () => onPressed(ref),
      child: const Text('変更する'),
    );

    //コラム
    final column = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        nameText,
        sizeText,
        priceText,
        button,
      ],
    );
    //画面
    return Scaffold(
      body: Center(
        child: column,
      ),
    );
  }
  //ボタン押した時の関数
  onPressed(WidgetRef ref){
    //画面に出ている冷凍
    final freeze = ref.read(freezeProvider);
    //入れ物ごと変えた　新しい冷蔵庫
    final newFreezer = freeze.copyWith(
      price: 500
    );
    //画面変更
    ref.read(freezeProvider.notifier).state = newFreezer;
  }
}