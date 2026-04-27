// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tomato_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Tomato _$TomatoFromJson(Map<String, dynamic> json) {
  return _Tomato.fromJson(json);
}

/// @nodoc
mixin _$Tomato {
  //名前
  String get name => throw _privateConstructorUsedError; //色
  String get color => throw _privateConstructorUsedError; //季節
  String get season => throw _privateConstructorUsedError;

  /// Serializes this Tomato to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tomato
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TomatoCopyWith<Tomato> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TomatoCopyWith<$Res> {
  factory $TomatoCopyWith(Tomato value, $Res Function(Tomato) then) =
      _$TomatoCopyWithImpl<$Res, Tomato>;
  @useResult
  $Res call({String name, String color, String season});
}

/// @nodoc
class _$TomatoCopyWithImpl<$Res, $Val extends Tomato>
    implements $TomatoCopyWith<$Res> {
  _$TomatoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tomato
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? color = null,
    Object? season = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            color: null == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                      as String,
            season: null == season
                ? _value.season
                : season // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TomatoImplCopyWith<$Res> implements $TomatoCopyWith<$Res> {
  factory _$$TomatoImplCopyWith(
    _$TomatoImpl value,
    $Res Function(_$TomatoImpl) then,
  ) = __$$TomatoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String color, String season});
}

/// @nodoc
class __$$TomatoImplCopyWithImpl<$Res>
    extends _$TomatoCopyWithImpl<$Res, _$TomatoImpl>
    implements _$$TomatoImplCopyWith<$Res> {
  __$$TomatoImplCopyWithImpl(
    _$TomatoImpl _value,
    $Res Function(_$TomatoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Tomato
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? color = null,
    Object? season = null,
  }) {
    return _then(
      _$TomatoImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        color: null == color
            ? _value.color
            : color // ignore: cast_nullable_to_non_nullable
                  as String,
        season: null == season
            ? _value.season
            : season // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TomatoImpl implements _Tomato {
  const _$TomatoImpl({
    required this.name,
    required this.color,
    required this.season,
  });

  factory _$TomatoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TomatoImplFromJson(json);

  //名前
  @override
  final String name;
  //色
  @override
  final String color;
  //季節
  @override
  final String season;

  @override
  String toString() {
    return 'Tomato(name: $name, color: $color, season: $season)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TomatoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.season, season) || other.season == season));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, color, season);

  /// Create a copy of Tomato
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TomatoImplCopyWith<_$TomatoImpl> get copyWith =>
      __$$TomatoImplCopyWithImpl<_$TomatoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TomatoImplToJson(this);
  }
}

abstract class _Tomato implements Tomato {
  const factory _Tomato({
    required final String name,
    required final String color,
    required final String season,
  }) = _$TomatoImpl;

  factory _Tomato.fromJson(Map<String, dynamic> json) = _$TomatoImpl.fromJson;

  //名前
  @override
  String get name; //色
  @override
  String get color; //季節
  @override
  String get season;

  /// Create a copy of Tomato
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TomatoImplCopyWith<_$TomatoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
