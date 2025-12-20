import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SwitchPage extends ConsumerWidget {
  const SwitchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 文と変数定義
    //  final switchState = ref.watch(switchNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Switch Page')),
      body: Column(),
      // switchState.when(
      //   data: (switchState) => Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 16.0),
      //     child: Column(
      //       children: [
      //         Row(
      //           children: [
      //             Text(
      //               'enabled',
      //               style: TextStyle(
      //                 fontSize: 16.0,
      //                 fontWeight: FontWeight.bold,

      //                 // 使用できない場合はトーンダウンしているように見せたいのでグレーで表示
      //                 // 使用できる場合は黒にする
      //                 color: switchState.isEnabled
      //                     ? Colors.black
      //                     : Colors.grey[400],
      //               ),
      //             ),
      //             Spacer(),
      //             Switch(
      //               value: switchState.isEnabled,
      //               onChanged: (value) async {
      //                 if (switchState.isEnabled) {
      //                   await ref
      //                       .read(switchNotifierProvider.notifier)
      //                       .switchOff();
      //                 } else {
      //                   try {
      //                     await ref
      //                         .read(switchNotifierProvider.notifier)
      //                         .switchOn();
      //                   } catch (e) {
      //                     await showDialog(
      //                       context: context,
      //                       builder: (context) => AlertDialog(
      //                         title: Text('SwitchをOnにしました'),
      //                         actions: [
      //                           TextButton(
      //                             onPressed: () => Navigator.pop(context),
      //                             child: Text('Cancel'),
      //                           ),
      //                         ],
      //                       ),
      //                     );
      //                   }
      //                 }
      //               },
      //             ),
      //           ],
      //         ),
      //         const SizedBox(height: 16.0),
      //         // ここにIndicatorを表示する。
      //         if (switchState.isEnabled) const Text('使えるよ！'),
      //       ],
      //     ),
      //   ),
      //   error: (error, stackTrace) => Text('Error: $error'),
      //   loading: () => const Center(child: CircularProgressIndicator()),
      // ),
    );
  }
}
