import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/news_model.dart';
import 'package:newsapp/servcies/news_services.dart';
import 'package:newsapp/widgets/news_list_view.dart';

class NewsListViewRequest extends StatefulWidget {
  NewsListViewRequest({super.key});

  @override
  State<NewsListViewRequest> createState() => _NewsListViewRequestState();
}

class _NewsListViewRequestState extends State<NewsListViewRequest> {
  Future<List<NewsModel>>? future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getService();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articales: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('oops there an error, try later'),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Align(
                // alignment: Alignment.center,
                widthFactor: 10,
                heightFactor: 14,
                child: CircularProgressIndicator()),
          );
        }
      },
    );
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