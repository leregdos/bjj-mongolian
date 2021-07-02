import 'package:bjj_mongolian_rulebook/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FoulsPage extends StatefulWidget {
  @override
  _FoulsPageState createState() => _FoulsPageState();
}

class _FoulsPageState extends State<FoulsPage> {
  String dropdownValue = 'All White Belts and All Belts (U18)';
  String dropdownValueMn = 'Цагаан бүстнүүд болон бүх өнгийн U18';

  List<String> divisionList = [
    'U12',
    'U16',
    'All White Belts and All Belts (U18)',
    'Blue and Purple Belts (18+)',
    'Brown and Black Belts (18+)',
    'Expert',
  ];
  List<String> divisionListMn = [
    'U12',
    'U16',
    'Цагаан бүстнүүд болон бүх өнгийн U18',
    'Цэнхэр болон ягаан бүстнүүд (18+)',
    'Бор болон хар бүстнүүд (18+)',
    'Их мастер',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              AppLocalizations.of(context).division,
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'FreeSans',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              elevation: 5.0,
              child: buildDropdownButton(),
            ),
          ),
          ListTile(
            title: Text(
              AppLocalizations.of(context).severeTechnicalFouls,
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'FreeSans',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: AppLocalizations.of(context).eng == 'English'
                  ? Column(
                      children: [
                        if (dropdownValue ==
                            'All White Belts and All Belts (U18)')
                          for (var item in foulList)
                            ListTile(
                              title: Text('$item'),
                              trailing:
                                  whiteFoul[foulList.indexOf(item)] == true
                                      ? Icon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                        )
                                      : Icon(
                                          FontAwesomeIcons.times,
                                          color: Colors.red,
                                        ),
                              subtitle: Divider(
                                color: Colors.grey,
                              ),
                            ),
                        if (dropdownValue == 'U12')
                          for (var item in foulList)
                            ListTile(
                              title: Text('$item'),
                              trailing: u12Foul[foulList.indexOf(item)] == true
                                  ? Icon(
                                      FontAwesomeIcons.check,
                                      color: Colors.green,
                                    )
                                  : Icon(
                                      FontAwesomeIcons.times,
                                      color: Colors.red,
                                    ),
                              subtitle: Divider(
                                color: Colors.grey,
                              ),
                            ),
                        if (dropdownValue == 'U16')
                          for (var item in foulList)
                            ListTile(
                              title: Text('$item'),
                              trailing: u16Foul[foulList.indexOf(item)] == true
                                  ? Icon(
                                      FontAwesomeIcons.check,
                                      color: Colors.green,
                                    )
                                  : Icon(
                                      FontAwesomeIcons.times,
                                      color: Colors.red,
                                    ),
                              subtitle: Divider(
                                color: Colors.grey,
                              ),
                            ),
                        if (dropdownValue == 'Blue and Purple Belts (18+)')
                          for (var item in foulList)
                            ListTile(
                              title: Text('$item'),
                              trailing:
                                  bluePurpleFoul[foulList.indexOf(item)] == true
                                      ? Icon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                        )
                                      : Icon(
                                          FontAwesomeIcons.times,
                                          color: Colors.red,
                                        ),
                              subtitle: Divider(
                                color: Colors.grey,
                              ),
                            ),
                        if (dropdownValue == 'Brown and Black Belts (18+)')
                          for (var item in foulList)
                            ListTile(
                              title: Text('$item'),
                              trailing:
                                  brownBlackFoul[foulList.indexOf(item)] == true
                                      ? Icon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                        )
                                      : Icon(
                                          FontAwesomeIcons.times,
                                          color: Colors.red,
                                        ),
                              subtitle: Divider(
                                color: Colors.grey,
                              ),
                            ),
                        if (dropdownValue == 'Expert')
                          for (var item in foulList)
                            ListTile(
                              title: Text('$item'),
                              trailing:
                                  expertFoul[foulList.indexOf(item)] == true
                                      ? Icon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                        )
                                      : Icon(
                                          FontAwesomeIcons.times,
                                          color: Colors.red,
                                        ),
                              subtitle: Divider(
                                color: Colors.grey,
                              ),
                            ),
                      ],
                    )
                  : Column(
                      children: [
                        if (dropdownValueMn ==
                            'Цагаан бүстнүүд болон бүх өнгийн U18')
                          for (var item in foulListMn)
                            ListTile(
                              title: Text('$item'),
                              trailing:
                                  whiteFoul[foulListMn.indexOf(item)] == true
                                      ? Icon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                        )
                                      : Icon(
                                          FontAwesomeIcons.times,
                                          color: Colors.red,
                                        ),
                              subtitle: Divider(
                                color: Colors.grey,
                              ),
                            ),
                        if (dropdownValueMn == 'U12')
                          for (var item in foulListMn)
                            ListTile(
                              title: Text('$item'),
                              trailing:
                                  u12Foul[foulListMn.indexOf(item)] == true
                                      ? Icon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                        )
                                      : Icon(
                                          FontAwesomeIcons.times,
                                          color: Colors.red,
                                        ),
                              subtitle: Divider(
                                color: Colors.grey,
                              ),
                            ),
                        if (dropdownValueMn == 'U16')
                          for (var item in foulListMn)
                            ListTile(
                              title: Text('$item'),
                              trailing:
                                  u16Foul[foulListMn.indexOf(item)] == true
                                      ? Icon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                        )
                                      : Icon(
                                          FontAwesomeIcons.times,
                                          color: Colors.red,
                                        ),
                              subtitle: Divider(
                                color: Colors.grey,
                              ),
                            ),
                        if (dropdownValueMn ==
                            'Цэнхэр болон ягаан бүстнүүд (18+)')
                          for (var item in foulListMn)
                            ListTile(
                              title: Text('$item'),
                              trailing:
                                  bluePurpleFoul[foulListMn.indexOf(item)] ==
                                          true
                                      ? Icon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                        )
                                      : Icon(
                                          FontAwesomeIcons.times,
                                          color: Colors.red,
                                        ),
                              subtitle: Divider(
                                color: Colors.grey,
                              ),
                            ),
                        if (dropdownValueMn == 'Бор болон хар бүстнүүд (18+)')
                          for (var item in foulListMn)
                            ListTile(
                              title: Text('$item'),
                              trailing:
                                  brownBlackFoul[foulListMn.indexOf(item)] ==
                                          true
                                      ? Icon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                        )
                                      : Icon(
                                          FontAwesomeIcons.times,
                                          color: Colors.red,
                                        ),
                              subtitle: Divider(
                                color: Colors.grey,
                              ),
                            ),
                        if (dropdownValueMn == 'Их мастер')
                          for (var item in foulListMn)
                            ListTile(
                              title: Text('$item'),
                              trailing:
                                  expertFoul[foulListMn.indexOf(item)] == true
                                      ? Icon(
                                          FontAwesomeIcons.check,
                                          color: Colors.green,
                                        )
                                      : Icon(
                                          FontAwesomeIcons.times,
                                          color: Colors.red,
                                        ),
                              subtitle: Divider(
                                color: Colors.grey,
                              ),
                            ),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDropdownButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppLocalizations.of(context).eng == 'English'
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(
                        color: Colors.deepPurple, fontFamily: 'FreeSans'),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: divisionList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: DropdownButton<String>(
                    value: dropdownValueMn,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(
                        color: Colors.deepPurple, fontFamily: 'FreeSans'),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValueMn = newValue;
                      });
                    },
                    items: divisionListMn
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
    );
  }
}
