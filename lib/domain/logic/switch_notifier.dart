import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:switch_app_freezed/data/repository/switch_repository.dart';
import 'package:switch_app_freezed/domain/model/switch_state.dart';

/// SwitchNotifierプロバイダー
final switchNotifierProvider =
    StreamNotifierProvider<SwitchNotifier, SwitchState>(() => SwitchNotifier());

/// ドキュメントID
const String documentId = 'x6qOk5aT9ojUgoBJrEWS';

/// SwitchNotifierクラス
///
/// SwitchをOn/Offするためのクラス
class SwitchNotifier extends StreamNotifier<SwitchState> {
  @override
  Stream<SwitchState> build() {
    // switchRepositoryProviderからsubscribeSwitchIsEnabledメソッドを呼び出す。
    // その結果をSwitchStateに変換して返す。
    return ref
        .watch(switchRepositoryProvider)
        .subscribeSwitchIsEnabled(documentId: documentId)
        .map((switchDto) => SwitchState.fromDto(switchDto));
  }

  /// SwitchをOnにする。
  Future<void> switchOn() async {
    state = const AsyncValue.loading();

    // switchRepositoryProviderからswitchOnメソッドを呼び出す。
    await ref.read(switchRepositoryProvider).switchOn(documentId: documentId);

    // SwitchStateを更新する。
    state = AsyncValue.data(SwitchState(isEnabled: true));

    // これを調べる。
    ref.invalidateSelf();
  }

  /// SwitchをOffにする。
  Future<void> switchOff() async {
    // switchRepositoryProviderからswitchOffメソッドを呼び出す。
    await ref.read(switchRepositoryProvider).switchOff(documentId: documentId);

    /// SwitchStateを更新する。
    state = AsyncValue.data(SwitchState(isEnabled: false));
    ref.invalidateSelf();
  }
}
