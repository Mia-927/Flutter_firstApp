import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // ← rootBundle
import 'dart:convert'; // ← jsonDecode
import 'tomato_json.dart';
import 'pack.dart';

test1() async {
  //stubを使えるようになる
  WidgetsFlutterBinding.ensureInitialized();
  //JSON <--- Stub
  final json = await rootBundle.loadString('stub/level1.json');
  //JsonMap <-- JSON
  final map = jsonDecode(json);
  //野菜データ <--- JsonMap
  final data = Tomato.fromJson(map);
  //データの中身確認
  debugPrint('データの中身：$data');
}
test2() async {
  //test1の中身を書き換える
  const data = Tomato(
    name:'きゃべつ',
    color:'みどり',
    season:'春',
  );
  //JsonMap <--- 野菜データ
  final map = data;
  //JSON <--- JsonMap
  final json = jsonEncode(map);
  //JSONの中身確認する
  debugPrint('JSONの中身: $json');
}
test3() async {
  //stubを使えるようになる
  WidgetsFlutterBinding.ensureInitialized();
  //JSON <--- Stub
  final json = await rootBundle.loadString('stub/level2.json');
  //JsonMap <-- JSON
  final map = jsonDecode(json);
  //野菜パックデータ <--- JsonMap
  final data = Pack.fromJson(map);
  //データの中身確認
  debugPrint('データの中身：$data');
}
test4() async {
  const content = Tomato(
    name:'アボカド',
    color:'クリームみどり',
    season: '秋,'
  );
  const data = Pack(
    size: '中',
    price: 1000,
    content: content,
  );
  //JsonMap　＜ーーー　野菜パックデータ
  final map = data.toJson();
  //JSON ＜ーーー JsonMap
  final json = jsonEncode(map);
  //確認
  debugPrint('JSONの中身: $json');
}
test5() async {
  //stubを使えるようになる
  WidgetsFlutterBinding.ensureInitialized();
  //JSON <--- Stub
  final json = await rootBundle.loadString('stub/level3.json');
  //JsonMap <-- JSON
  final map = jsonDecode(json);
  //野菜データ <--- JsonMap
  final data = Tomato.fromJson(map);
  //データの中身確認
  debugPrint('データの中身：$data');
}
test6() async {}
test7() async {}
test8() async {}
test9() async {}
test10() async {}