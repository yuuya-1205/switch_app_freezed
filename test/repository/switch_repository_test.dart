import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:switch_app_freezed/data/repository/firebase_firestore_repository.dart';
import 'package:switch_app_freezed/data/repository/switch_repository.dart';

import '../utils/create_container.dart';
import '../utils/mocks.mocks.dart';

const String documentId = 'x6qOk5aT9ojUgoBJrEWS';

void main() {
  final mockFirestore = MockFirebaseFirestore();
  final mockCollection = MockCollectionReference<Map<String, dynamic>>();
  final mockDocRef = MockDocumentReference<Map<String, dynamic>>();
  final mockSnapshot = MockDocumentSnapshot<Map<String, dynamic>>();
  test('subscribeSwitchIsEnabled が正しくデータを取得できるか', () async {
    when(mockFirestore.collection('switch')).thenReturn(mockCollection);
    when(mockCollection.doc(documentId)).thenReturn(mockDocRef);
    when(mockDocRef.snapshots()).thenAnswer((_) => Stream.value(mockSnapshot));
    when(mockSnapshot.data()).thenReturn({'isEnabled': false});

    final container = createContainer(
      overrides: [firebaseFirestoreProvider.overrideWithValue(mockFirestore)],
    );

    final repository = container.read(switchRepositoryProvider);
    final stream = repository.subscribeSwitchIsEnabled(documentId: documentId);
    final result = await stream.first;

    expect(result.isEnabled, false);
  });
}
