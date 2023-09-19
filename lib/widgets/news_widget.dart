import 'package:flutter/material.dart';
import 'package:newsapp/models/news_model.dart';

class News extends StatelessWidget {
  const News({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            // color: Colors.blueAccent,
            image: DecorationImage(
              image: NetworkImage(newsModel.image ?? ''),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(
          newsModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            newsModel.subTitil ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
