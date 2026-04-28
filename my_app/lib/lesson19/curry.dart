import 'package:freezed_annotation/freezed_annotation.dart';
import 'tomato_json.dart';

part 'curry.freezed.dart';
part 'curry.g.dart';


@freezed
class Curry with _$Curry{
  const factory Curry({
    //タイトル
    required String title,
    //中身
    required List<Tomato> tomato,
    //カロリー
    required int calories,
  }) = _Curry;
  factory Curry.fromJson(Map<String, dynamic> json)
    =>_$CurryFromJson(json);
}