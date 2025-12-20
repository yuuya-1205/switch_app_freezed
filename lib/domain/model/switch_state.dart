import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:switch_app_freezed/data/dto/switch_dto.dart';

part 'switch_state.freezed.dart';

@freezed
/// SwitchStateモデル
///
/// 画面に表示するデータを格納するモデル←（格納するって表現は適切なのか？）
class SwitchState with _$SwitchState {
  /// ファクトリーコンストラクタ
  const factory SwitchState({required bool isEnabled}) = _SwitchState;

  ///　SwitchDtoからSwitchStateに変換する。
  factory SwitchState.fromDto(SwitchDto switchDto) =>
      SwitchState(isEnabled: switchDto.isEnabled);
}
