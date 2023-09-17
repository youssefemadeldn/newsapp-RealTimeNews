import 'package:flutter/material.dart';
import 'package:newsapp/models/news_type_model.dart';
import 'package:newsapp/widgets/news_type_widget.dart';

class NewsTypeListView extends StatelessWidget {
  const NewsTypeListView({
    super.key,
  });
  final List<NewsTypeModel> newsType = const [
    NewsTypeModel(
      newsTypeName: 'General',
      image: 'assets/general.avif',
    ),
    NewsTypeModel(
      newsTypeName: 'Business',
      image: 'assets/business.avif',
    ),
    NewsTypeModel(
      newsTypeName: 'Science',
      image: 'assets/science.avif',
    ),
    NewsTypeModel(
      newsTypeName: 'Entertaiment',
      image: 'assets/entertaiment.avif',
    ),
    NewsTypeModel(
      newsTypeName: 'Health',
      image: 'assets/health.avif',
    ),
    NewsTypeModel(
      newsTypeName: 'Sports',
      image: 'assets/sports.avif',
    ),
    NewsTypeModel(
      newsTypeName: 'Technology',
      image: 'assets/technology.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
