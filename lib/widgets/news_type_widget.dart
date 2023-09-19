import 'package:flutter/material.dart';
import 'package:newsapp/models/news_type_model.dart';
import 'package:newsapp/views/news_type_view.dart';

class NewsType extends StatelessWidget {
  const NewsType({
    super.key,
    required this.newsTypeModel,
  });
  final NewsTypeModel newsTypeModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return NewsTypeView(category: newsTypeModel.newsTypeName);
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        width: 160,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage(newsTypeModel.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            newsTypeModel.newsTypeName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
