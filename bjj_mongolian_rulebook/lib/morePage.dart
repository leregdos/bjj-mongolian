import 'package:bjj_mongolian_rulebook/utilities/providers/appLanguage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    AppLanguage appLanguage = Provider.of<AppLanguage>(context);
    int initialIndex = appLanguage.appLocal == Locale('en') ? 0 : 1;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              AppLocalizations.of(context).aboutTheRules,
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'FreeSans',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context).rulesDate,
                  style: TextStyle(fontSize: 16, fontFamily: 'FreeSans'),
                ),
                Text('2020 v2.1',
                    style: TextStyle(fontSize: 16, fontFamily: 'FreeSans')),
              ],
            ),
          ),
          InkWell(
            onTap: () async {
              await launch('https://bit.ly/3ggpkQL');
            },
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context).rulesOnline,
                    style: TextStyle(fontSize: 16, fontFamily: 'FreeSans'),
                  ),
                  Text('https://bit.ly/3ggpkQL',
                      style: TextStyle(fontSize: 16, fontFamily: 'FreeSans')),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              await launch('http://jjau.org/index.php?id=2');
            },
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context).website,
                    style: TextStyle(fontSize: 16, fontFamily: 'FreeSans'),
                  ),
                  Text('http://jjau.org/index.php?id=2',
                      style: TextStyle(fontSize: 16, fontFamily: 'FreeSans')),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(
              AppLocalizations.of(context).aboutThisApplication,
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'FreeSans',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context).version,
                  style: TextStyle(fontSize: 16, fontFamily: 'FreeSans'),
                ),
                Text(
                  '1.0.0',
                  style: TextStyle(fontSize: 16, fontFamily: 'FreeSans'),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              AppLocalizations.of(context).changeLanguage,
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'FreeSans',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: ToggleSwitch(
                    minWidth: 110.0,
                    initialLabelIndex: initialIndex,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    labels: ['English', 'Монгол хэл'],
                    activeBgColors: [Colors.blue, Colors.pink],
                    onToggle: (index) {
                      setState(() {
                        index == 0
                            ? appLanguage.changeLanguage(Locale('en'))
                            : appLanguage.changeLanguage(Locale('mn'));
                        initialIndex = index;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
