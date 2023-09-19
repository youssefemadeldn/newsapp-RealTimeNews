class NewsModel {
  final String? image;
  final String title;
  final String? subTitil;
  final String urlNews;

  NewsModel(
      {required this.urlNews,
      required this.image,
      required this.title,
      required this.subTitil});
}
