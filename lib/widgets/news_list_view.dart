import 'package:flutter/material.dart';
import 'package:newsapp/models/news_model.dart';
import 'package:newsapp/widgets/news_widget.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
    required this.articales,
  });

  final List<NewsModel> articales;

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
