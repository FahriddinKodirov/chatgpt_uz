import 'package:chatgpt_uz/data/model/answer_model.dart';
import 'package:chatgpt_uz/data/model/my_respon/my_response.dart';
import 'package:chatgpt_uz/data/repositories/all_data_repo.dart';
import 'package:flutter/material.dart';

class AllViewModel extends ChangeNotifier {
  AllDataRepo allDataRepo;

  AllViewModel({required this.allDataRepo});

  AnswerModel? chat;
  String chatError = '';

  fetchChat(message) async {
    notifyListeners();
    MyResponse myResponse = await allDataRepo.chatGPT(message);
    notifyListeners();
    if (myResponse.error.isEmpty) {
      chat = myResponse.data;
    } else {
      chatError = myResponse.error;
    }
    notifyListeners();
  }

}