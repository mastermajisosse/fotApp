import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  List links = [
    "https://upload.wikimedia.org/wikipedia/en/thumb/7/7a/Manchester_United_FC_crest.svg/1200px-Manchester_United_FC_crest.svg.png",
    "https://upload.wikimedia.org/wikipedia/en/thumb/c/cc/Chelsea_FC.svg/200px-Chelsea_FC.svg.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/FC_Internazionale_Milano_2014.svg/205px-FC_Internazionale_Milano_2014.svg.png",
    "https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/SS_Lazio.svg/1200px-SS_Lazio.svg.png",
    "https://lh3.googleusercontent.com/OQZi4ckWAs7UrOlZEPefXZgJOcdJuSM5FSH9zqD5rMg6c2MOaxcKpV5IMrb1Tju98fWyNmcI33E4RGb0uC09Ej4W",
    "https://upload.wikimedia.org/wikipedia/en/thumb/f/f4/Atletico_Madrid_2017_logo.svg/170px-Atletico_Madrid_2017_logo.svg.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              headerUp(),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 60,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 7,
                    itemBuilder: (context, i) {
                      return Container(
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              // color: Colors.blue,
                              child: Text(
                                (i + 11).toString(),
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 24,
              ),
              name("Premier League"),
              SizedBox(
                height: 24,
              ),
              cardd(context, "17:30", "24 octobre", links[0], links[1]),
              SizedBox(
                height: 24,
              ),
              name("Serie A"),
              SizedBox(
                height: 24,
              ),
              cardd(context, "20:30", "25 octobre", links[2], links[3]),
              SizedBox(
                height: 24,
              ),
              name("La Liga"),
              SizedBox(
                height: 24,
              ),
              cardd(context, "15:30", "24 octobre", links[4], links[5]),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget name(name) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Text(
        name,
        style: TextStyle(fontSize: 20),
      ),
      Text(
        "SEE ALL",
        style: TextStyle(fontSize: 18, color: Colors.grey),
      ),
    ],
  );
}

Widget cardd(context, time, day, team1, team2) {
  return Container(
    height: MediaQuery.of(context).size.height / 4,
    padding: EdgeInsets.only(left: 12, right: 12),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 7,
        itemBuilder: (context, i) {
          return Container(
            width: MediaQuery.of(context).size.width / 1.2,
            child: Card(
              elevation: 0,
              color: Colors.grey[100],
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Gameweek 1",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        child: Image.network(team1),
                      ),
                      Text(
                        time,
                        style: TextStyle(fontSize: 28),
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        child: Image.network(
                          team2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    day,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          );
        }),
  );
}

Widget headerUp() {
  return Container(
    height: 100,
    width: double.infinity,
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
                  "Match",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ],
          )),
    ),
  );
}
