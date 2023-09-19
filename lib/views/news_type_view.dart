import 'package:flutter/material.dart';
import 'package:newsapp/widgets/news_list_view_request.dart';

class NewsTypeView extends StatelessWidget {
  const NewsTypeView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 8, left: 8, bottom: 8),
        child: CustomScrollView(
          slivers: [
            NewsListViewRequest(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
