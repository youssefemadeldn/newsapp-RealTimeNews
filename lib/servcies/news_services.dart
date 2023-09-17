import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  void getService() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=77b8f7df8a524fdd95bf90b76b3b98d2');
  }
}
