import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:switch_app_freezed/view/switch_page.dart' show SwitchPage;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(ProviderScope(observers: [], child: const MyApp()));
}

/// アプリのエントリーポイント
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SwitchPage(),
    );
  }
}
