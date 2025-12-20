// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switch_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SwitchDto _$SwitchDtoFromJson(Map<String, dynamic> json) {
  return _SwitchDto.fromJson(json);
}

/// @nodoc
mixin _$SwitchDto {
  bool get isEnabled => throw _privateConstructorUsedError;

  /// Serializes this SwitchDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SwitchDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwitchDtoCopyWith<SwitchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchDtoCopyWith<$Res> {
  factory $SwitchDtoCopyWith(SwitchDto value, $Res Function(SwitchDto) then) =
      _$SwitchDtoCopyWithImpl<$Res, SwitchDto>;
  @useResult
  $Res call({bool isEnabled});
}

/// @nodoc
class _$SwitchDtoCopyWithImpl<$Res, $Val extends SwitchDto>
    implements $SwitchDtoCopyWith<$Res> {
  _$SwitchDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwitchDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isEnabled = null}) {
    return _then(
      _value.copyWith(
            isEnabled: null == isEnabled
                ? _value.isEnabled
                : isEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SwitchDtoImplCopyWith<$Res>
    implements $SwitchDtoCopyWith<$Res> {
  factory _$$SwitchDtoImplCopyWith(
    _$SwitchDtoImpl value,
    $Res Function(_$SwitchDtoImpl) then,
  ) = __$$SwitchDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isEnabled});
}

/// @nodoc
class __$$SwitchDtoImplCopyWithImpl<$Res>
    extends _$SwitchDtoCopyWithImpl<$Res, _$SwitchDtoImpl>
    implements _$$SwitchDtoImplCopyWith<$Res> {
  __$$SwitchDtoImplCopyWithImpl(
    _$SwitchDtoImpl _value,
    $Res Function(_$SwitchDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SwitchDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isEnabled = null}) {
    return _then(
      _$SwitchDtoImpl(
        isEnabled: null == isEnabled
            ? _value.isEnabled
            : isEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SwitchDtoImpl implements _SwitchDto {
  const _$SwitchDtoImpl({required this.isEnabled});

  factory _$SwitchDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwitchDtoImplFromJson(json);

  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'SwitchDto(isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchDtoImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled);

  /// Create a copy of SwitchDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchDtoImplCopyWith<_$SwitchDtoImpl> get copyWith =>
      __$$SwitchDtoImplCopyWithImpl<_$SwitchDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SwitchDtoImplToJson(this);
  }
}

abstract class _SwitchDto implements SwitchDto {
  const factory _SwitchDto({required final bool isEnabled}) = _$SwitchDtoImpl;

  factory _SwitchDto.fromJson(Map<String, dynamic> json) =
      _$SwitchDtoImpl.fromJson;

  @override
  bool get isEnabled;

  /// Create a copy of SwitchDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwitchDtoImplCopyWith<_$SwitchDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
