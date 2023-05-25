class MessageModel {
  String role;
  String content;

  MessageModel({
    required this.role,
    required this.content,
  });

  factory MessageModel.fromJson(Map<String, dynamic> jsonData) {
    return MessageModel(
      role: jsonData['role'] as String? ?? '',
      content: jsonData['content'] as String? ?? '',

    );
  }
}