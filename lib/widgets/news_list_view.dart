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
  List<NewsModel> articales = [];
  @override
  void initState() async {
    super.initState();
    articales = await NewsService(Dio()).getService();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
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

// SliverToBoxAdapter(
//       child: ListView.builder(
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           itemCount: 10,
//           itemBuilder: (context, index) {
//             return const News();
//           }),
//     )
