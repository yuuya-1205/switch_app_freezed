import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:switch_app_freezed/data/dto/switch_dto.dart';
import 'package:switch_app_freezed/data/repository/switch_repository.dart';
import 'package:switch_app_freezed/domain/logic/switch_notifier.dart';
import 'package:switch_app_freezed/domain/models/switch_state.dart';

import '../utils/create_container.dart';
import '../utils/mocks.mocks.dart';

const String documentId = 'x6qOk5aT9ojUgoBJrEWS';

void main() {
  late MockSwitchRepository mockSwitchRepository;
  setUp(() {
    mockSwitchRepository = MockSwitchRepository();
  });
  test(
    'switchRepositoryからデータを取得し、SwitchDtoからSwitchStateに変換するできているか確認する',
    () async {
      // Repository の subscribeSwitchIsEnabled() が返す Stream をモックする。
      when(
        mockSwitchRepository.subscribeSwitchIsEnabled(documentId: documentId),
      ).thenAnswer((_) => Stream.value(SwitchDto(isEnabled: false)));
      // whenについて理解したいかな。

      // refの代わりにcontainerを使用する。
      final container = createContainer(
        overrides: [
          switchRepositoryProvider.overrideWith((_) => mockSwitchRepository),
        ],
      );

      // 初期化してインスタンスを作成する。
      await container.read(switchNotifierProvider.future);

      // SwitchState（isEnabled: false）になっていることを確認する。
      expect(
        container.read(switchNotifierProvider).value,
        SwitchState(isEnabled: false),
      );

      ///なんか微妙だよね。
    },
  );

  test('SwitchをOnにすると、SwitchStateがtrueになることを確認する', () async {
    // Repository の subscribeSwitchIsEnabled() が返す Stream をモックする。
    when(
      mockSwitchRepository.subscribeSwitchIsEnabled(documentId: documentId),
    ).thenAnswer((_) => Stream.value(SwitchDto(isEnabled: true)));

    when(
      mockSwitchRepository.switchOn(documentId: documentId),
    ).thenAnswer((_) async {});

    // refの代わりにcontainerを使用する。
    // SwitchRepositoryをmockに置き換えている。
    final container = createContainer(
      overrides: [
        switchRepositoryProvider.overrideWith((_) => mockSwitchRepository),
      ],
    );

    await container.read(switchNotifierProvider.notifier).switchOn();

    expect(
      container.read(switchNotifierProvider).value,
      SwitchState(isEnabled: true),
    );
  });

  test('SwitchをOffにすると、SwitchStateがfalseになることを確認する', () async {
    // Repository の subscribeSwitchIsEnabled() が返す Stream をモックする。
    when(
      mockSwitchRepository.subscribeSwitchIsEnabled(documentId: documentId),
    ).thenAnswer((_) => Stream.value(SwitchDto(isEnabled: false)));

    when(
      mockSwitchRepository.switchOff(documentId: documentId),
    ).thenAnswer((_) async {});

    // refの代わりにcontainerを使用する。
    // SwitchRepositoryをmockに置き換えている。
    final container = createContainer(
      overrides: [
        switchRepositoryProvider.overrideWith((_) => mockSwitchRepository),
      ],
    );

    await container.read(switchNotifierProvider.notifier).switchOff();

    expect(
      container.read(switchNotifierProvider).value,
      SwitchState(isEnabled: false),
    );
  });
}
