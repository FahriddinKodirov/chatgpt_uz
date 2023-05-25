import 'package:chatgpt_uz/view/all_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



  InputDecoration getInputDecorationTwo(context,
    {required String chat}) {
  return const InputDecoration(
    hintText: 'send message',
    labelStyle:  TextStyle(color: Colors.black, fontSize: 16),
    border:  OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(
        width: 1,
      ),
    ),
    enabledBorder:  OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Colors.black)),
    focusedBorder:  OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Colors.black)),
    errorBorder:  OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Colors.black)),
  );
}

height(context) => MediaQuery.of(context).size.height;
width(context) => MediaQuery.of(context).size.width;
