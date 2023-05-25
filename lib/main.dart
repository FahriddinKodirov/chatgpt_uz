import 'package:chatgpt_uz/data/api_service/api_service.dart';
import 'package:chatgpt_uz/data/repositories/all_data_repo.dart';
import 'package:chatgpt_uz/screen/chat/chat_home_page.dart';
import 'package:chatgpt_uz/view/all_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
     ChangeNotifierProvider(create: (context) => AllViewModel(allDataRepo: AllDataRepo(apiService: ApiService())))
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
