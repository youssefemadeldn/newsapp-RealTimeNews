import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  void getService() async {
    final response = await dio.get('path');

    print(response);
  }
}
