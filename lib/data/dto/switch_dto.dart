import 'package:freezed_annotation/freezed_annotation.dart';
part 'switch_dto.freezed.dart';

// jsonからSwitchDtoへ、SwitchDtoからjsonへの変換を行うために必要なファイル
part 'switch_dto.g.dart';

@freezed
/// SwitchDtoモデル
///
/// Firebaseから取得したデータを格納するモデル
class SwitchDto with _$SwitchDto {
  /// ファクトリーコンストラクタ
  const factory SwitchDto({required bool isEnabled}) = _SwitchDto;

  ///　jsonからSwitchDtoに変換する。
  factory SwitchDto.fromJson(Map<String, Object?> json) =>
      _$SwitchDtoFromJson(json);
}
