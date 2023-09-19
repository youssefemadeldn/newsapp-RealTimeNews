import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/news_model.dart';
import 'package:newsapp/servcies/news_services.dart';
import 'package:newsapp/widgets/news_widget.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  bool isLoading = true;
  List<NewsModel> articales = [];
  @override
  void initState() {
    super.initState();
    getGenralNews();
  }

  Future<void> getGenralNews() async {
    articales = await NewsService(Dio()).getService();
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
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articales.length,
              (context, index) {
                return News(
                  newsModel: articales[index],
                );
              },
            ),
          );
  }
}
