import 'package:flutter/material.dart';
import 'package:newsapp/widgets/news_widget.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const News();
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
