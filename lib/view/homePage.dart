import 'package:almarssad/view/calendar.dart';
import 'package:almarssad/view/hot.dart';
import 'package:almarssad/view/topscorer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  final pageOption = [
    Hot(),
    Calendar(),
    TopScorer(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: pageOption[_page]),
      bottomNavigationBar: SafeArea(
        child: CurvedNavigationBar(
          // index: _page,
          key: _bottomNavigationKey,
          backgroundColor: Colors.white,
          color: Color.fromRGBO(0, 0, 0, 0.95),
          height: MediaQuery.of(context).size.height / 12,
          items: <Widget>[
            Icon(
              Icons.whatshot,
              size: 30,
              // color: Color.fromRGBO(0, 0, 0, 0.9),
              color: Colors.white,
            ),
            Icon(
              Icons.calendar_today,
              size: 30,
              // color: Color.fromRGBO(0, 0, 0, 0.9),
              color: Colors.white,
            ),
            Icon(
              Icons.poll,
              size: 30,
              // color: Color.fromRGBO(0, 0, 0, 0.9),
              color: Colors.white,
            ),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
      ),
    );
  }
}
