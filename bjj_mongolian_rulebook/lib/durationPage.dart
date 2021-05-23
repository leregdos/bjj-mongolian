import 'package:flutter/material.dart';

class DurationPage extends StatefulWidget {
  @override
  _DurationPageState createState() => _DurationPageState();
}

class _DurationPageState extends State<DurationPage> {
  String dropdownValue = 'Adult';
  List<String> divisionList = [
    'Kids 1',
    'Kids 2',
    'Kids 3',
    'Infant',
    'Junior',
    'Teen',
    'Juvenile',
    'Adult',
    'Master'
  ];
  List<int> ageList = [4, 6, 8, 10, 12, 14, 16, 18, 30];
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          title: Text(
            'DIVISION',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'FreeSans',
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Card(
            child: buildDropdownButton(),
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
                  age = ageList[divisionList.indexOf(newValue)];
                });
              },
              items: divisionList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Container(
            child: Text(
              '(Current year) - (Birth year) >= $age',
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
