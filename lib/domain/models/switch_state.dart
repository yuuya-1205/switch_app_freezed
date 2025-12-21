import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:switch_app_freezed/data/dto/switch_dto.dart';

part 'switch_state.freezed.dart';

@freezed
/// {@template switch_state}
/// SwitchStateクラス
///
/// [isEnabled] が含まれています。
/// {@endtemplate}
class SwitchState with _$SwitchState {
  /// ファクトリーコンストラクタ
  const factory SwitchState({required bool isEnabled}) = _SwitchState;

  ///　SwitchDtoからSwitchStateに変換する。
  factory SwitchState.fromDto(SwitchDto switchDto) =>
      SwitchState(isEnabled: switchDto.isEnabled);
}
