import 'package:flutter/material.dart';
import 'package:newsapp/widgets/news_list_view_request.dart';

class NewsTypeView extends StatelessWidget {
  const NewsTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewRequest(),
        ],
      ),
    );
  }
}
