import 'package:bjj_mongolian_rulebook/durationPage.dart';
import 'package:bjj_mongolian_rulebook/placeHolder.dart';
import 'package:bjj_mongolian_rulebook/weightPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pointsPage.dart';
import 'placeHolder.dart';

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
      home: MyHomePage(title: 'Rulebook'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> children = [
    PlaceholderWidget(Colors.white),
    DurationPage(),
    WeightPage(),
    PointsPage(),
    PlaceholderWidget(Colors.red),
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
