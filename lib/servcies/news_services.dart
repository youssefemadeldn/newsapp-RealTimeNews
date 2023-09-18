import 'package:dio/dio.dart';
import 'package:newsapp/models/news_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  void getService() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=77b8f7df8a524fdd95bf90b76b3b98d2');
    // the general structure to receive data from Api
    Map<String, dynamic> jesonData = response.data;
    List<dynamic> articles = jesonData['articles'];

    List<NewsModel> articlesList = [];

    for (var article in articles) {
      NewsModel newsModel = NewsModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitil: article['description']);
      articlesList.add(newsModel);
    }
    print(articlesList);
  }
}
