import 'package:flutter/material.dart';
import 'package:newsapp/widgets/news_list_view_request.dart';
import 'package:newsapp/widgets/news_type_list_viwe.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: CustomScrollView(
          slivers: [
            NewsTypeListView(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            NewsListViewRequest(category: 'general'),
          ],
        ),
      ),
    );
  }
}





// const NewsTypeListView(),
// News(),
// const NewsListView(),