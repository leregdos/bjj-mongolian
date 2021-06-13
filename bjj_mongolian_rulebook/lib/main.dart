import 'package:bjj_mongolian_rulebook/durationPage.dart';
import 'package:bjj_mongolian_rulebook/foulsPage.dart';
import 'package:bjj_mongolian_rulebook/morePage.dart';
import 'package:bjj_mongolian_rulebook/utilities/providers/appLanguage.dart';
import 'package:bjj_mongolian_rulebook/weightPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pointsPage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppLanguage appLanguage = AppLanguage();
  await appLanguage.fetchLocale();
  print(appLanguage.appLocal);
  runApp(MyApp(
    appLanguage: appLanguage,
  ));
}

class MyApp extends StatelessWidget {
  final AppLanguage appLanguage;

  const MyApp({this.appLanguage});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppLanguage>(
      create: (_) => appLanguage,
      child: Consumer<AppLanguage>(
        builder: (context, model, child) {
          return MaterialApp(
            locale: model.appLocal,
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
            home: BottomTab(),
          );
        },
      ),
    );
  }
}

class BottomTab extends StatefulWidget {
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
        title: Text(AppLocalizations.of(context).rulebook),
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
