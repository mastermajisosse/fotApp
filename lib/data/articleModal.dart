class ArticleModal {
  String title;
  String image;
  String date;
  int id;
  String author;
  String imageAuthor;
  String body;

  ArticleModal({
    this.title,
    this.image,
    this.id,
    this.date,
    this.author,
    this.body,
    this.imageAuthor,
  });

  ArticleModal.fromJson(Map<String, dynamic> json) {
    title = json['full_name'];
    image = json['image'];
    id = json['id'];
    date = json['date'];
    author = json['author'];
    body = json['body'];
    imageAuthor = json['imageAuthor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['full_name'] = this.title;
    data['image'] = this.image;
    data['id'] = this.id;
    data['date'] = this.date;
    data['author'] = this.author;
    data['body'] = this.body;
    data['imageAuthor'] = this.imageAuthor;
    return data;
  }
}

List<ArticleModal> articles = [
  ArticleModal(
    title: 'pogba wants juve return',
    image: 'assets/images/pogba.jpg',
    id: 0,
    date: 'yesterday',
    author: 'otmane el majid',
    body:
        "Whether you’re ready to admit it or not, Liverpool are on the verge of winning their first Premier League title. Jurgen Klopp’s side were leading the way for most of 2018/19 but had to settle for second place behind Manchester City.Credit where credit is due, Pep Guardiola’s men were outstanding during the title race run-in, winning 14 Premier League games in a row to end the campaign. However, Liverpool will take great confidence from their 2018/19 bid for glory.Fresh from winning the 2018/19 Champions League final, Liverpool can go one better in the Premier League this campaign. Here are five reasons why the Reds look destined to lift the English title for the first time in the Premier League era…",
    imageAuthor: 'assets/images/otmane.png',
  ),
  ArticleModal(
    title: 'lampard likely to be named chelsea boss',
    image: 'assets/images/lampard.jpg',
    id: 1,
    date: '3 days ago',
    author: 'otmane el majid',
    body:
        "Whether you’re ready to admit it or not, Liverpool are on the verge of winning their first Premier League title. Jurgen Klopp’s side were leading the way for most of 2018/19 but had to settle for second place behind Manchester City.Credit where credit is due, Pep Guardiola’s men were outstanding during the title race run-in, winning 14 Premier League games in a row to end the campaign. However, Liverpool will take great confidence from their 2018/19 bid for glory.Fresh from winning the 2018/19 Champions League final, Liverpool can go one better in the Premier League this campaign. Here are five reasons why the Reds look destined to lift the English title for the first time in the Premier League era…",
    imageAuthor: 'assets/images/otmane.png',
  ),
  ArticleModal(
    title: 'rodri : what can man city expect',
    image: 'assets/images/rodri.jpg',
    id: 2,
    date: '12:00 AM',
    author: 'otmane el majid',
    body:
        "Whether you’re ready to admit it or not, Liverpool are on the verge of winning their first Premier League title. Jurgen Klopp’s side were leading the way for most of 2018/19 but had to settle for second place behind Manchester City.Credit where credit is due, Pep Guardiola’s men were outstanding during the title race run-in, winning 14 Premier League games in a row to end the campaign. However, Liverpool will take great confidence from their 2018/19 bid for glory.Fresh from winning the 2018/19 Champions League final, Liverpool can go one better in the Premier League this campaign. Here are five reasons why the Reds look destined to lift the English title for the first time in the Premier League era…",
    imageAuthor: 'assets/images/otmane.png',
  ),
  ArticleModal(
    title: 'Sari leave chelsea for juve',
    image: 'assets/images/sari.jpg',
    id: 3,
    date: '11:48 AM',
    author: 'otmane el majid',
    body:
        "Whether you’re ready to admit it or not, Liverpool are on the verge of winning their first Premier League title. Jurgen Klopp’s side were leading the way for most of 2018/19 but had to settle for second place behind Manchester City.Credit where credit is due, Pep Guardiola’s men were outstanding during the title race run-in, winning 14 Premier League games in a row to end the campaign. However, Liverpool will take great confidence from their 2018/19 bid for glory.Fresh from winning the 2018/19 Champions League final, Liverpool can go one better in the Premier League this campaign. Here are five reasons why the Reds look destined to lift the English title for the first time in the Premier League era…",
    imageAuthor: 'assets/images/otmane.png',
  ),
  ArticleModal(
    title: 'hummels completes move back to dortmund',
    image: 'assets/images/humm.jpg',
    id: 4,
    date: 'yesterday',
    author: 'otmane el majid',
    body:
        "Whether you’re ready to admit it or not, Liverpool are on the verge of winning their first Premier League title. Jurgen Klopp’s side were leading the way for most of 2018/19 but had to settle for second place behind Manchester City.Credit where credit is due, Pep Guardiola’s men were outstanding during the title race run-in, winning 14 Premier League games in a row to end the campaign. However, Liverpool will take great confidence from their 2018/19 bid for glory.Fresh from winning the 2018/19 Champions League final, Liverpool can go one better in the Premier League this campaign. Here are five reasons why the Reds look destined to lift the English title for the first time in the Premier League era…",
    imageAuthor: 'assets/images/otmane.png',
  ),
  ArticleModal(
    title: '5 Roma Great totti player..',
    image: 'assets/images/img1.jpg',
    id: 5,
    date: '17:48 PM',
    author: 'otmane el majid',
    body:
        "Whether you’re ready to admit it or not, Liverpool are on the verge of winning their first Premier League title. Jurgen Klopp’s side were leading the way for most of 2018/19 but had to settle for second place behind Manchester City.Credit where credit is due, Pep Guardiola’s men were outstanding during the title race run-in, winning 14 Premier League games in a row to end the campaign. However, Liverpool will take great confidence from their 2018/19 bid for glory.Fresh from winning the 2018/19 Champions League final, Liverpool can go one better in the Premier League this campaign. Here are five reasons why the Reds look destined to lift the English title for the first time in the Premier League era…",
    imageAuthor: 'assets/images/otmane.png',
  ),
  ArticleModal(
    title: '5 Roma Great totti player..',
    image: 'assets/images/img2.png',
    id: 6,
    date: 'yesterday',
    author: 'otmane el majid',
    body:
        "Whether you’re ready to admit it or not, Liverpool are on the verge of winning their first Premier League title. Jurgen Klopp’s side were leading the way for most of 2018/19 but had to settle for second place behind Manchester City.Credit where credit is due, Pep Guardiola’s men were outstanding during the title race run-in, winning 14 Premier League games in a row to end the campaign. However, Liverpool will take great confidence from their 2018/19 bid for glory.Fresh from winning the 2018/19 Champions League final, Liverpool can go one better in the Premier League this campaign. Here are five reasons why the Reds look destined to lift the English title for the first time in the Premier League era…",
    imageAuthor: 'assets/images/otmane.png',
  ),
];
