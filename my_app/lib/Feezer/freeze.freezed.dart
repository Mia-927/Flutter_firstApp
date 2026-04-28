// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freeze.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Freeze {
  //名前
  String get name => throw _privateConstructorUsedError; //大きさ
  int get size => throw _privateConstructorUsedError; //値段
  int get price => throw _privateConstructorUsedError;

  /// Create a copy of Freeze
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FreezeCopyWith<Freeze> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezeCopyWith<$Res> {
  factory $FreezeCopyWith(Freeze value, $Res Function(Freeze) then) =
      _$FreezeCopyWithImpl<$Res, Freeze>;
  @useResult
  $Res call({String name, int size, int price});
}

/// @nodoc
class _$FreezeCopyWithImpl<$Res, $Val extends Freeze>
    implements $FreezeCopyWith<$Res> {
  _$FreezeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Freeze
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? size = null, Object? price = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            size: null == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                      as int,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FreezeImplCopyWith<$Res> implements $FreezeCopyWith<$Res> {
  factory _$$FreezeImplCopyWith(
    _$FreezeImpl value,
    $Res Function(_$FreezeImpl) then,
  ) = __$$FreezeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int size, int price});
}

/// @nodoc
class __$$FreezeImplCopyWithImpl<$Res>
    extends _$FreezeCopyWithImpl<$Res, _$FreezeImpl>
    implements _$$FreezeImplCopyWith<$Res> {
  __$$FreezeImplCopyWithImpl(
    _$FreezeImpl _value,
    $Res Function(_$FreezeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Freeze
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? size = null, Object? price = null}) {
    return _then(
      _$FreezeImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        size: null == size
            ? _value.size
            : size // ignore: cast_nullable_to_non_nullable
                  as int,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$FreezeImpl implements _Freeze {
  const _$FreezeImpl({
    required this.name,
    required this.size,
    required this.price,
  });

  //名前
  @override
  final String name;
  //大きさ
  @override
  final int size;
  //値段
  @override
  final int price;

  @override
  String toString() {
    return 'Freeze(name: $name, size: $size, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreezeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, size, price);

  /// Create a copy of Freeze
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FreezeImplCopyWith<_$FreezeImpl> get copyWith =>
      __$$FreezeImplCopyWithImpl<_$FreezeImpl>(this, _$identity);
}

abstract class _Freeze implements Freeze {
  const factory _Freeze({
    required final String name,
    required final int size,
    required final int price,
  }) = _$FreezeImpl;

  //名前
  @override
  String get name; //大きさ
  @override
  int get size; //値段
  @override
  int get price;

  /// Create a copy of Freeze
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FreezeImplCopyWith<_$FreezeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
