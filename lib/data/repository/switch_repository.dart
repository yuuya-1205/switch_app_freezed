import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:switch_app_freezed/data/dto/switch_dto.dart';

import 'package:switch_app_freezed/data/repository/firebase_firestore_repository.dart';

/// SwitchRepositoryプロバイダー
final switchRepositoryProvider = Provider<SwitchRepository>((ref) {
  return SwitchRepository(ref);
});

/// SwitchRepositoryクラス
///
/// Firebaseから取得したデータを取得および更新を行うためのクラス
class SwitchRepository {
  /// コンストラクタ
  SwitchRepository(this.ref);

  /// リファレンス（プロバイダーのインスタンス）
  final Ref ref;

  /// 指定したswitchコレクションのドキュメントを購読する。
  Stream<SwitchDto> subscribeSwitchIsEnabled({required String documentId}) {
    return ref
        .read(firebaseFirestoreProvider)
        .collection('switch')
        .doc(documentId)
        .snapshots()
        .map(
          (snapshot) =>
              SwitchDto(isEnabled: snapshot.data()?['isEnabled'] as bool),
        );
  }

  /// 指定したswitchコレクションのドキュメントを3秒後にisEnabled=trueにする。
  Future<void> switchOn({required String documentId}) async {
    await Future.delayed(Duration(seconds: 3));

    await ref
        .read(firebaseFirestoreProvider)
        .collection('switch')
        .doc(documentId)
        .set({'isEnabled': true});
  }

  /// 指定したswitchコレクションのドキュメントをisEnabled=falseにする。
  Future<void> switchOff({required String documentId}) async {
    await ref
        .read(firebaseFirestoreProvider)
        .collection('switch')
        .doc(documentId)
        .set({'isEnabled': false});
  }
}
