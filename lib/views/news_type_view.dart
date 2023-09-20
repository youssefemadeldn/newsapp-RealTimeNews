import 'package:flutter/material.dart';
import 'package:newsapp/widgets/news_list_view_request.dart';

class NewsTypeView extends StatelessWidget {
  const NewsTypeView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'RealTime',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'News',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(
              width: 55,
            ),
          ],
        ),
      ),
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
