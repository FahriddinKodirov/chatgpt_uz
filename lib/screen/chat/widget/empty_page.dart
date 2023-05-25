import 'package:chatgpt_uz/screen/chat/widget/blinking_cursor.dart';
import 'package:chatgpt_uz/utils/my_utils.dart';
import 'package:chatgpt_uz/view/all_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmptyPage extends StatefulWidget {

  const EmptyPage({super.key});

  @override
  State<EmptyPage> createState() => _EmptyPageState();
}

class _EmptyPageState extends State<EmptyPage> {
  TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text('I am a ChatGPT',style: TextStyle(fontSize: height(context)*0.05),),
        const Spacer(),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
             onSubmitted: (value) {
               Provider.of<AllViewModel>(context, listen: false)
                      .fetchChat(value);
             },
              keyboardType: TextInputType.text,
              cursorHeight: 22,
              controller: controller,
              decoration:
                  getInputDecorationTwo(context, chat: controller.text)),
        ),
      ],
    );
  }

}
