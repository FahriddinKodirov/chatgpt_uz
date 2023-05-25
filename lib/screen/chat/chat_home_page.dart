import 'package:chatgpt_uz/screen/chat/widget/empty_page.dart';
import 'package:chatgpt_uz/screen/chat/widget/not_empty_page.dart';
import 'package:chatgpt_uz/view/all_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController chatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ChatGPT'),
          backgroundColor: CupertinoColors.darkBackgroundGray,
        ),
          body: Consumer<AllViewModel>(builder: (context, allViewModel, child) {
            if (allViewModel.chat == null) {
              return const EmptyPage();
            } else if (allViewModel.chat != null) {
              return NotEmptyPage(data: allViewModel.chat!.choices[0].message.content);
            }
            return const CircularProgressIndicator();
          })),
    );
  }
}
