// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switch_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SwitchState {
  bool get isEnabled => throw _privateConstructorUsedError;

  /// Create a copy of SwitchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwitchStateCopyWith<SwitchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchStateCopyWith<$Res> {
  factory $SwitchStateCopyWith(
    SwitchState value,
    $Res Function(SwitchState) then,
  ) = _$SwitchStateCopyWithImpl<$Res, SwitchState>;
  @useResult
  $Res call({bool isEnabled});
}

/// @nodoc
class _$SwitchStateCopyWithImpl<$Res, $Val extends SwitchState>
    implements $SwitchStateCopyWith<$Res> {
  _$SwitchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwitchState
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
abstract class _$$SwitchStateImplCopyWith<$Res>
    implements $SwitchStateCopyWith<$Res> {
  factory _$$SwitchStateImplCopyWith(
    _$SwitchStateImpl value,
    $Res Function(_$SwitchStateImpl) then,
  ) = __$$SwitchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isEnabled});
}

/// @nodoc
class __$$SwitchStateImplCopyWithImpl<$Res>
    extends _$SwitchStateCopyWithImpl<$Res, _$SwitchStateImpl>
    implements _$$SwitchStateImplCopyWith<$Res> {
  __$$SwitchStateImplCopyWithImpl(
    _$SwitchStateImpl _value,
    $Res Function(_$SwitchStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SwitchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isEnabled = null}) {
    return _then(
      _$SwitchStateImpl(
        isEnabled: null == isEnabled
            ? _value.isEnabled
            : isEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SwitchStateImpl implements _SwitchState {
  const _$SwitchStateImpl({required this.isEnabled});

  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'SwitchState(isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchStateImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEnabled);

  /// Create a copy of SwitchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchStateImplCopyWith<_$SwitchStateImpl> get copyWith =>
      __$$SwitchStateImplCopyWithImpl<_$SwitchStateImpl>(this, _$identity);
}

abstract class _SwitchState implements SwitchState {
  const factory _SwitchState({required final bool isEnabled}) =
      _$SwitchStateImpl;

  @override
  bool get isEnabled;

  /// Create a copy of SwitchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwitchStateImplCopyWith<_$SwitchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
