class ArticleModel {
  late String author;
  late String title;
  late String description;
  late String url;
  late String urlToImage;
  late String content;

  ArticleModel(
      {required this.author,
      required this.content,
      required this.title,
      required this.description,
      required this.urlToImage,
      required this.url});
}
