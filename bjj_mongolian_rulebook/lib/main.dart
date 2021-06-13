import 'package:bjj_mongolian_rulebook/durationPage.dart';
import 'package:bjj_mongolian_rulebook/foulsPage.dart';
import 'package:bjj_mongolian_rulebook/morePage.dart';
import 'package:bjj_mongolian_rulebook/weightPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pointsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
            headline6: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'FreeSans'),
            bodyText1: TextStyle(fontSize: 16, fontFamily: 'FreeSans')),
        fontFamily: 'FreeSans',
        primarySwatch: Colors.grey,
        bottomAppBarColor: Colors.grey,
      ),
      home: BottomTab(title: 'Rulebook'),
    );
  }
}

class BottomTab extends StatefulWidget {
  BottomTab({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  int _currentIndex = 0;
  final List<Widget> children = [
    FoulsPage(),
    DurationPage(),
    WeightPage(),
    PointsPage(),
    MorePage()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            label: "Fouls",
            icon: Icon(FontAwesomeIcons.times),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            label: "Duration",
            icon: Icon(FontAwesomeIcons.clock),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            label: "Weight",
            icon: Icon(FontAwesomeIcons.weightHanging),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            label: "Points",
            icon: Icon(FontAwesomeIcons.check),
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.commentDots),
              label: "More",
              backgroundColor: Colors.grey)
        ],
      ),
      body: children[_currentIndex],
    );
  }
}
