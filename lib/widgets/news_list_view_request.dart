import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/news_model.dart';
import 'package:newsapp/servcies/news_services.dart';
import 'package:newsapp/widgets/news_list_view.dart';

class NewsListViewRequest extends StatefulWidget {
  const NewsListViewRequest({
    super.key,
  });

  @override
  State<NewsListViewRequest> createState() => _NewsListViewRequestState();
}

class _NewsListViewRequestState extends State<NewsListViewRequest> {
  List<NewsModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGenralNews();
  }

  Future<void> getGenralNews() async {
    articles = await NewsService(Dio()).getService();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Align(
                // alignment: Alignment.center,
                widthFactor: 10,
                heightFactor: 14,
                child: CircularProgressIndicator()),
          )
        : NewsListView(
            articales: articles,
          );
  }
}
