import 'package:chatgpt_uz/data/api_service/api_service.dart';
import 'package:chatgpt_uz/data/model/my_respon/my_response.dart';

class AllDataRepo{
  ApiService apiService;

  AllDataRepo({required this.apiService});

 Future<MyResponse> chatGPT(message) => apiService.chatGPT(message);

}