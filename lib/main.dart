import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/servcies/news_services.dart';
import 'package:newsapp/views/home_page_view.dart';

void main() {
  NewsService(Dio()).getService();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
