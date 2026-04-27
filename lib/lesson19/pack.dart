import 'package:freezed_annotation/freezed_annotation.dart';
import 'tomato_json.dart';

part 'pack.freezed.dart';
part 'pack.g.dart';


@freezed
class Pack with _$Pack{
  const factory Pack({
    //値段
    required int price,
    //中身
    required Tomato content,
    //サイズ
    required String size,
  }) = _Pack;
  factory Pack.fromJson(Map<String, dynamic> json)
    =>_$PackFromJson(json);
}