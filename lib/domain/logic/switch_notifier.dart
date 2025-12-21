import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:switch_app_freezed/data/repository/switch_repository.dart';
import 'package:switch_app_freezed/domain/models/switch_state.dart';

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
  ///
  /// SwitchStateがローディング状態になる。
  /// 3秒後にisEnabled=trueになり、FirebaseのデータをisEnabled: trueに更新する。
  /// ref.invalidateSelfにより、Notifierのbuild関数が再実行され、SwitchStateが更新される。
  Future<void> switchOn() async {
    state = const AsyncValue.loading();

    // switchRepositoryProviderからswitchOnメソッドを呼び出す。
    await ref.read(switchRepositoryProvider).switchOn(documentId: documentId);

    // ref.invalidateSelf()→Provider自身を無効化→buildメソッドが再実行され、最新のデータが取得される。
    ref.invalidateSelf();
  }

  /// SwitchをOffにする。
  ///
  /// FirebaseのデータをisEnabled: falseに更新する。
  /// ref.invalidateSelfにより、Notifierのbuild関数が再実行され、SwitchStateが更新される。
  Future<void> switchOff() async {
    // switchRepositoryProviderからswitchOffメソッドを呼び出す。
    await ref.read(switchRepositoryProvider).switchOff(documentId: documentId);

    // buildメソッドが再実行され、SwitchStateが更新される。
    ref.invalidateSelf();
  }
}
