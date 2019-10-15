import 'package:almarssad/data/articleModal.dart';
import 'package:almarssad/services/articleService.dart';
import 'package:almarssad/view/hotArticle.dart';
import 'package:flutter/material.dart';

class Hot extends StatefulWidget {
  @override
  _HotState createState() => _HotState();
}

class _HotState extends State<Hot> {
  var cont;
  bool callApi = true;
  ArticleService artticleService;
  List<ArticleModal> artticleList;

  @override
  void initState() {
    super.initState();
    setState(() {
      callApi = true;
    });
    artticleService = ArticleService();
    artticleList = new List();
    artticleService.getLists().then((data) {
      if (data.isEmpty) {
        print('citykhawya');
      }
      setState(() {
        artticleList.addAll(data);
        callApi = false;
      });
      // print(artticleList[0].image);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: callApi
          ? Center(child: CircularProgressIndicator())
          : ListView(
              shrinkWrap: true,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 550,
                      child: Stack(
                        children: <Widget>[
                          InkWell(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        HotArticle(article: artticleList[0]))),
                            child: first(
                              artticleList[0].image,
                              artticleList[0].title,
                              artticleList[0].date,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(40),
                            child: Text(
                              "News",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32),
                            ),
                          ),
                          floatingCard(
                            MediaQuery.of(context).size.height / 1.9,
                            MediaQuery.of(context).size.width / 9,
                            artticleList[1].image,
                            artticleList[1],
                          ),
                          floatingCard(
                            MediaQuery.of(context).size.height / 1.9,
                            MediaQuery.of(context).size.width / 1.9,
                            artticleList[2].image,
                            artticleList[2],
                          ),
                          floatingCardTitle(
                            MediaQuery.of(context).size.height / 1.36,
                            MediaQuery.of(context).size.width / 7,
                            artticleList[1].title,
                          ),
                          floatingCardTitle(
                            MediaQuery.of(context).size.height / 1.36,
                            MediaQuery.of(context).size.width / 1.76,
                            artticleList[2].title,
                          ),
                        ],
                      ),
                    ),
                    listUnderCard(),
                  ],
                ),
              ],
            ),
    );
  }

  Widget first(String url, String title, String tarikh) {
    return Container(
      height: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(url),
            fit: BoxFit.cover,
          )),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.2),
                ],
              ),
            ),
            child: Padding(
              padding:
                  EdgeInsets.only(left: 40, top: 20, bottom: 60, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    tarikh,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget floatingCard(_top, _left, img, artticleLists) {
    return Container(
      child: Positioned(
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 5,
        left: _left,
        top: _top,
        child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) =>
                  HotArticle(article: artticleLists))),
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.network(
              img,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }

  Widget floatingCardTitle(_top, _left, titles) {
    return Positioned(
      top: _top,
      left: _left,
      child: SizedBox(
          width: MediaQuery.of(context).size.width / 3,
          child: Text(
            titles,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          )),
    );
  }

  Widget listUnderCard() {
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          primary: false,
          itemCount: artticleList.length - 3,
          itemBuilder: (context, i) {
            return InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      HotArticle(article: artticleList[i + 3]))),
              child: ListTile(
                leading: Container(
                  width: 70,
                  height: 100,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.network(
                      artticleList[i + 3].image,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                title: Text(
                  artticleList[i + 3].title,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                subtitle: Text("today 16:33"),
              ),
            );
          }),
    );
  }
}
