import 'package:chatgpt_uz/data/api_service/api_client.dart';
import 'package:chatgpt_uz/data/model/answer_model.dart';
import 'package:chatgpt_uz/data/model/my_respon/my_response.dart';
import 'package:dio/dio.dart';

class ApiService extends ApiClient {
  Future<MyResponse> chatGPT(message) async {
    MyResponse myResponse = MyResponse(error: "");
    dio.options.headers["Content-Type"] = "application/json";
    dio.options.headers["Authorization"] = "Bearer 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";

    try {
      Response response = await dio.post(dio.options.baseUrl, data: {
        "model": "gpt-3.5-turbo",
        "messages": [{"role": "user", "content": message}
        ]
      });

      if (response.statusCode == 200) {
        print('statusCode ${response.statusCode}');
        myResponse.data =
            AnswerModel.fromJson(response.data as Map<String, dynamic>);
        print('statusCode ${myResponse.data}');
      }
    } catch (err) {
      myResponse.error = err.toString();
    }

    return myResponse;
  }
}
