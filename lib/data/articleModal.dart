class ArticleModal {
  String title;
  String image;
  String date;
  String author;
  String imageAuthor;
  String body;

  ArticleModal({
    this.title,
    this.image,
    this.date,
    this.author,
    this.body,
    this.imageAuthor,
  });

  ArticleModal fromJson(Map<String, dynamic> json) {
    return ArticleModal(
        title: json['title'],
        image: json['image'],
        date: json['date'],
        author: json['author'],
        body: json['body'],
        imageAuthor: json['imageAuthor']);
  }
}
