import 'package:almarssad/data/GoalScorereModel.dart';
import 'package:almarssad/services/GoalScorerService.dart';
import 'package:flutter/material.dart';

class TopScorer extends StatefulWidget {
  @override
  _TopScorerState createState() => _TopScorerState();
}

class _TopScorerState extends State<TopScorer> {
  bool callApi = true;
  GoalScorerService goalScorerService;
  List<GoalScModel> goalScModel;

  @override
  void initState() {
    super.initState();
    setState(() {
      callApi = true;
    });
    goalScorerService = GoalScorerService();
    goalScModel = new List();
    goalScorerService.getLists().then((data) {
      if (data.isEmpty) {
        print('citykhawya');
      }
      setState(() {
        goalScModel.addAll(data);
        callApi = false;
      });
      // print(goalScModel[0].image);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: callApi
          ? Center(child: CircularProgressIndicator())
          : SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    headerUp(),
                    firstTop(),
                    restOfPlayers(),
                  ],
                ),
              ),
            ),
    );
  }

  Widget headerUp() {
    return Container(
      height: 100,
      width: double.infinity,
      // color: Colors.red,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: NetworkImage(goalScModel[0].img),
        fit: BoxFit.cover,
      )),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        child: Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: Text(
                    "Most Goals",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: Text(
                    "Season 2019/2020 ",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                )
              ],
            )),
      ),
    );
  }

  Widget firstTop() {
    return Container(
        height: 300,
        width: double.infinity,
        child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(goalScModel[0].img),
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
                    padding: EdgeInsets.only(
                        left: 40, top: 20, bottom: 60, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          goalScModel[0].goals.toString() + " Goals",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 32),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          goalScModel[0].name,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          goalScModel[0].team,
                          style: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.w300,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ))));
  }

  Widget restOfPlayers() {
    return Container(
        child: ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: goalScModel.length - 1,
            itemBuilder: (context, i) {
              return ListTile(
                leading: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      (i + 2).toString(),
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                ),
                title: Text(
                  goalScModel[i + 1].name,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                subtitle: Text("today 16:33"),
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    goalScModel[i + 1].goals.toString(),
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
              );
              // );
            }));
  }
}
