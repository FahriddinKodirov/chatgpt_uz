import 'package:chatgpt_uz/data/model/message.dart';

class Choices {
  MessageModel message;
  String finishReason;
  int index;

  Choices({
    required this.message,
    required this.finishReason,
    required this.index,
  });

  factory Choices.fromJson(Map<String, dynamic> jsonData) {
    return Choices(
      message: MessageModel.fromJson(jsonData['message']),
      finishReason: jsonData['finish_reason'] as String? ?? '',
      index: jsonData['caption'] as int? ?? 0,

    );
  }
}