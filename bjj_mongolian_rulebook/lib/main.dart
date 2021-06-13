import 'package:bjj_mongolian_rulebook/durationPage.dart';
import 'package:bjj_mongolian_rulebook/foulsPage.dart';
import 'package:bjj_mongolian_rulebook/morePage.dart';
import 'package:bjj_mongolian_rulebook/weightPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pointsPage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale('en', ''), const Locale('mn', '')],
      title: 'BJJ Mongolian',
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
      home: BottomTab(title: AppLocalizations.of(context).rulebook),
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
            label: AppLocalizations.of(context).fouls,
            icon: Icon(FontAwesomeIcons.times),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            label: AppLocalizations.of(context).duration,
            icon: Icon(FontAwesomeIcons.clock),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            label: AppLocalizations.of(context).weight,
            icon: Icon(FontAwesomeIcons.weightHanging),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            label: AppLocalizations.of(context).points,
            icon: Icon(FontAwesomeIcons.check),
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.commentDots),
              label: AppLocalizations.of(context).more,
              backgroundColor: Colors.grey)
        ],
      ),
      body: children[_currentIndex],
    );
  }
}
