import 'package:flutter/material.dart';

class DurationPage extends StatefulWidget {
  @override
  _DurationPageState createState() => _DurationPageState();
}

class _DurationPageState extends State<DurationPage> {
  String dropdownValue = 'Adult';
  String dropdownValueBelt = 'White';
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
  List<String> beltList = ['White', 'Blue', 'Purple', 'Brown', 'Black'];
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
        ListTile(
          title: Text(
            'BELT',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'FreeSans',
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: divisionList.indexOf(dropdownValue) > 6
              ? Card(child: buildBeltDropdownButton())
              : Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 16,
                      child: Text(
                        'All Belts',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 15,
                          fontFamily: 'FreeSans',
                        ),
                      ),
                    ),
                  ),
                ),
        ),
        ListTile(
          title: Text(
            'DURATION',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'FreeSans',
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget buildBeltDropdownButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: DropdownButton<String>(
              value: dropdownValueBelt,
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
                  dropdownValueBelt = newValue;
                });
              },
              items: beltList.map<DropdownMenuItem<String>>((String value) {
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
