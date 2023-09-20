import 'package:flutter/material.dart';
import 'package:newsapp/models/news_type_model.dart';
import 'package:newsapp/widgets/news_type_widget.dart';

class NewsTypeListView extends StatelessWidget {
  const NewsTypeListView({
    super.key,
  });
  final List<NewsTypeModel> newsType = const [
    NewsTypeModel(
      newsTypeName: 'general',
      image: 'assets/Pgeneral.jpg',
    ),
    NewsTypeModel(
      newsTypeName: 'Business',
      image: 'assets/Pbussniss.jpg',
    ),
    NewsTypeModel(
      newsTypeName: 'Science',
      image: 'assets/zscience.jpg',
    ),
    NewsTypeModel(
      newsTypeName: 'Entertainment',
      image: 'assets/Pentertainment.jpg',
    ),
    NewsTypeModel(
      newsTypeName: 'Health',
      image: 'assets/PHealthNews.jpg',
    ),
    NewsTypeModel(
      newsTypeName: 'Sports',
      image: 'assets/Psports.jpg',
    ),
    NewsTypeModel(
      newsTypeName: 'Technology',
      image: 'assets/Ptechnologe.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          itemCount: newsType.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return NewsType(
              newsTypeModel: newsType[index],
            );
          },
        ),
      ),
    );
  }
}
