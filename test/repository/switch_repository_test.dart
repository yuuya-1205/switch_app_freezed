import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:switch_app_freezed/data/dto/switch_dto.dart';
import 'package:switch_app_freezed/data/repository/switch_repository.dart';

import '../utils/create_container.dart';
import '../utils/mocks.mocks.dart';

const String documentId = 'x6qOk5aT9ojUgoBJrEWS';

void main() {
  late MockSwitchRepository mockSwitchRepository;
  setUp(() {
    mockSwitchRepository = MockSwitchRepository();
  });
  test('Firebaseからデータを取得し、SwitchDtoに変換するできているか確認する', () async {
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

    // 読み込む
    final streamSwitchDto = container
        .read(switchRepositoryProvider)
        .subscribeSwitchIsEnabled(documentId: documentId);

    final switchDto = await streamSwitchDto.first;

    // 読み込んだSwitchState（isEnabled: false）になっていることを確認する。
    expect(switchDto, SwitchDto(isEnabled: false));
  });

  test('SwitchをOnにすると、SwitchDtoがtrueになることを確認する', () async {
    // Repository の subscribeSwitchIsEnabled() が返す Stream をモックする。
    when(
      mockSwitchRepository.subscribeSwitchIsEnabled(documentId: documentId),
    ).thenAnswer((_) => Stream.value(SwitchDto(isEnabled: false)));

    final container = createContainer(
      overrides: [
        switchRepositoryProvider.overrideWith((_) => mockSwitchRepository),
      ],
    );

    when(
      mockSwitchRepository.subscribeSwitchIsEnabled(documentId: documentId),
    ).thenAnswer((_) => Stream.value(SwitchDto(isEnabled: true)));

    await container
        .read(switchRepositoryProvider)
        .switchOn(documentId: documentId);

    // 購読するstreamを取得する。
    final streamSwitchDto = container
        .read(switchRepositoryProvider)
        .subscribeSwitchIsEnabled(documentId: documentId);

    // 購読するstreamからデータを取得する。
    final switchDto = await streamSwitchDto.first;

    expect(switchDto, SwitchDto(isEnabled: true));
  });

  test('SwitchをOffにすると、SwitchDtoがfalseになることを確認する', () async {
    // Repository の subscribeSwitchIsEnabled() が返す Stream をモックする。
    when(
      mockSwitchRepository.subscribeSwitchIsEnabled(documentId: documentId),
    ).thenAnswer((_) => Stream.value(SwitchDto(isEnabled: true)));

    // refの代わりにcontainerを使用する。
    // SwitchRepositoryをmockに置き換えている。
    final container = createContainer(
      overrides: [
        switchRepositoryProvider.overrideWith((_) => mockSwitchRepository),
      ],
    );

    when(
      mockSwitchRepository.subscribeSwitchIsEnabled(documentId: documentId),
    ).thenAnswer((_) => Stream.value(SwitchDto(isEnabled: false)));

    await container
        .read(switchRepositoryProvider)
        .switchOff(documentId: documentId);

    // 購読するstreamを取得する。
    final streamSwitchDto = container
        .read(switchRepositoryProvider)
        .subscribeSwitchIsEnabled(documentId: documentId);

    // 購読するstreamからデータを取得する。
    final switchDto = await streamSwitchDto.first;

    expect(switchDto, SwitchDto(isEnabled: false));
  });
}
