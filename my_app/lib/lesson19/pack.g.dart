// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackImpl _$$PackImplFromJson(Map<String, dynamic> json) => _$PackImpl(
  price: (json['price'] as num).toInt(),
  content: Tomato.fromJson(json['content'] as Map<String, dynamic>),
  size: json['size'] as String,
);

Map<String, dynamic> _$$PackImplToJson(_$PackImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'content': instance.content,
      'size': instance.size,
    };
