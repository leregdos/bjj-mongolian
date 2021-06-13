import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DurationPage extends StatefulWidget {
  @override
  _DurationPageState createState() => _DurationPageState();
}

class _DurationPageState extends State<DurationPage> {
  String dropdownValue = 'Adults';
  String dropdownValueMn = 'Насанд хүрэгчид';

  List<String> divisionList = [
    'U8+',
    'U10+',
    'U14',
    'U14+',
    'U16+',
    'U18+',
    'Adults',
    'Masters'
  ];
  List<String> divisionListMn = [
    'U10+',
    'U14',
    'U14+',
    'U16+',
    'U18+',
    'Насанд хүрэгчид',
    'Мастерс'
  ];
  List<int> ageList = [8, 10, 12, 14, 16, 18, 18, 35];
  List<String> durationList = ['1.5', '3', '3', '3', '4', '5', '6', '5'];
  int age = 18;
  String duration = '6';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
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
            AppLocalizations.of(context).durationCaps,
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
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  '$duration ${AppLocalizations.of(context).minutes}',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'FreeSans',
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDropdownButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: DropdownButton<String>(
              value: AppLocalizations.of(context).eng == 'English'
                  ? dropdownValue
                  : dropdownValueMn,
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
                  age = ageList[divisionList.indexOf(newValue)];
                  duration = durationList[divisionList.indexOf(newValue)];
                });
              },
              items: AppLocalizations.of(context).eng == 'English'
                  ? divisionList.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList()
                  : divisionListMn
                      .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
            ),
          ),
          Container(
            child: Text(
              '${AppLocalizations.of(context).currentMinusBirth} $age',
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'FreeSans',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
