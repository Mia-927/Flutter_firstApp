import 'package:freezed_annotation/freezed_annotation.dart';
part 'tomato_json.freezed.dart';
part 'tomato_json.g.dart';

@freezed
class Tomato with _$Tomato{
  const factory Tomato({
    //名前
    required String name,
    //色
    required String color,
    //季節
    required String season,
  }) = _Tomato;
  factory Tomato.fromJson(Map<String, dynamic> json)
    =>_$TomatoFromJson(json);
}