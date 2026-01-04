import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:switch_app_freezed/data/repository/switch_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  SwitchRepository,
  FirebaseFirestore,
  CollectionReference,
  DocumentReference,
  DocumentSnapshot,
  Stream,
])
void main() {}
