// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Pack _$PackFromJson(Map<String, dynamic> json) {
  return _Pack.fromJson(json);
}

/// @nodoc
mixin _$Pack {
  //値段
  int get price => throw _privateConstructorUsedError; //中身
  Tomato get content => throw _privateConstructorUsedError; //サイズ
  String get size => throw _privateConstructorUsedError;

  /// Serializes this Pack to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackCopyWith<Pack> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackCopyWith<$Res> {
  factory $PackCopyWith(Pack value, $Res Function(Pack) then) =
      _$PackCopyWithImpl<$Res, Pack>;
  @useResult
  $Res call({int price, Tomato content, String size});

  $TomatoCopyWith<$Res> get content;
}

/// @nodoc
class _$PackCopyWithImpl<$Res, $Val extends Pack>
    implements $PackCopyWith<$Res> {
  _$PackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? content = null,
    Object? size = null,
  }) {
    return _then(
      _value.copyWith(
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as int,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as Tomato,
            size: null == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of Pack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TomatoCopyWith<$Res> get content {
    return $TomatoCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackImplCopyWith<$Res> implements $PackCopyWith<$Res> {
  factory _$$PackImplCopyWith(
    _$PackImpl value,
    $Res Function(_$PackImpl) then,
  ) = __$$PackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int price, Tomato content, String size});

  @override
  $TomatoCopyWith<$Res> get content;
}

/// @nodoc
class __$$PackImplCopyWithImpl<$Res>
    extends _$PackCopyWithImpl<$Res, _$PackImpl>
    implements _$$PackImplCopyWith<$Res> {
  __$$PackImplCopyWithImpl(_$PackImpl _value, $Res Function(_$PackImpl) _then)
    : super(_value, _then);

  /// Create a copy of Pack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? content = null,
    Object? size = null,
  }) {
    return _then(
      _$PackImpl(
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as int,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as Tomato,
        size: null == size
            ? _value.size
            : size // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PackImpl implements _Pack {
  const _$PackImpl({
    required this.price,
    required this.content,
    required this.size,
  });

  factory _$PackImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackImplFromJson(json);

  //値段
  @override
  final int price;
  //中身
  @override
  final Tomato content;
  //サイズ
  @override
  final String size;

  @override
  String toString() {
    return 'Pack(price: $price, content: $content, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price, content, size);

  /// Create a copy of Pack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackImplCopyWith<_$PackImpl> get copyWith =>
      __$$PackImplCopyWithImpl<_$PackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackImplToJson(this);
  }
}

abstract class _Pack implements Pack {
  const factory _Pack({
    required final int price,
    required final Tomato content,
    required final String size,
  }) = _$PackImpl;

  factory _Pack.fromJson(Map<String, dynamic> json) = _$PackImpl.fromJson;

  //値段
  @override
  int get price; //中身
  @override
  Tomato get content; //サイズ
  @override
  String get size;

  /// Create a copy of Pack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackImplCopyWith<_$PackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
