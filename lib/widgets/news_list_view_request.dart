import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/news_model.dart';
import 'package:newsapp/servcies/news_services.dart';
import 'package:newsapp/widgets/news_list_view.dart';

class NewsListViewRequest extends StatelessWidget {
  NewsListViewRequest({super.key});
  final List<NewsModel> articles = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsService(Dio()).getService(),
        builder: (context, snapshot) {
          return NewsListView(articales: snapshot.data ?? []);
        });
  }
}

    // return isLoading
    //     ? const SliverToBoxAdapter(
    //         child: Align(
    //             // alignment: Alignment.center,
    //             widthFactor: 10,
    //             heightFactor: 14,
    //             child: CircularProgressIndicator()),
    //       )
    //     : articles.isNotEmpty
    //         ? NewsListView(
    //             articales: articles,
    //           )
    //         : const SliverToBoxAdapter(
    //             child: Text('oops there an error, try later'),
    //           );