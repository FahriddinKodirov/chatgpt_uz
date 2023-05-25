import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chatgpt_uz/screen/chat/widget/blinking_cursor.dart';
import 'package:chatgpt_uz/utils/my_utils.dart';
import 'package:chatgpt_uz/view/all_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotEmptyPage extends StatefulWidget {
  final String data;

  const NotEmptyPage({super.key, required this.data});

  @override
  State<NotEmptyPage> createState() => _NotEmptyPageState();
}

class _NotEmptyPageState extends State<NotEmptyPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color:  CupertinoColors.extraLightBackgroundGray,
            height: height(context) * 0.8,
            width: width(context),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Padding(
                   padding: EdgeInsets.only(left: width(context)*0.04,top: height(context)*0.01),
                   child: Row(
                     children: [
                       Image.asset('assets/chatGPT.png',width: height(context)*0.05,),
                        Padding(
                         padding: EdgeInsets.only(left: width(context)*0.03,top: height(context)*0.02),
                         child: const BlinkingCursor(),
                       )
                     ],
                   ),
                 ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: height(context) * 0.02,vertical: height(context)*0.01),
                      child: Text(
                        widget.data,
                        style: GoogleFonts.abyssinicaSil(
                            fontSize: height(context) * 0.03),
                      )),
                  SizedBox(
                    height: height(context) * 0.05,
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: CupertinoColors.extraLightBackgroundGray,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: height(context)*0.03,vertical: height(context)*0.01),
              child: TextField(
                  textInputAction: TextInputAction.done,
                  cursorHeight: 22,
                  onSubmitted: (value) {
                    Provider.of<AllViewModel>(context, listen: false)
                        .fetchChat(value);
                  },
                  controller: controller,
                  decoration:
                      getInputDecorationTwo(context, chat: controller.text)),
            ),
          ),
        ],
      ),
    );
  }
}
