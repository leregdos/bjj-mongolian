import 'package:bjj_mongolian_rulebook/placeHolder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        primarySwatch: Colors.blue,
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
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.black),
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
            backgroundColor: Colors.blue,
            label: "Fouls",
            icon: Icon(FontAwesomeIcons.times),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            label: "Duration",
            icon: Icon(FontAwesomeIcons.clock),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            label: "Weight",
            icon: Icon(FontAwesomeIcons.weightHanging),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            label: "Points",
            icon: Icon(FontAwesomeIcons.check),
          ),
        ],
      ),
      body: children[_currentIndex],
    );
  }
}
