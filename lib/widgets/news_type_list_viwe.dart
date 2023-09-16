import 'package:flutter/material.dart';
import 'package:newsapp/widgets/news_type_widget.dart';

class NewsTypeListView extends StatelessWidget {
  const NewsTypeListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const NewsType();
        },
      ),
    );
  }
}
