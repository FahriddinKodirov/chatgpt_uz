import 'package:chatgpt_uz/data/model/choice.dart';

class AnswerModel {
  String id;
  String object;
  int created;
  String model;
  List<Choices> choices;

  AnswerModel({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    required this.choices,
  });

factory AnswerModel.fromJson(Map<String, dynamic> jsonData){
  return AnswerModel(
    id: jsonData['id'] as String? ?? '',
    object: jsonData['object'] as String? ?? '',
    created: jsonData['created'] as int? ?? 0,
    model: jsonData['model'] as String? ?? '',
    choices: (jsonData['choices'] as List).map((json) => Choices.fromJson(json)).toList());
}
}