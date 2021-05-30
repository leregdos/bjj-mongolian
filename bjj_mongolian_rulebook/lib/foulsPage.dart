import 'package:bjj_mongolian_rulebook/utilities/constants.dart';
import 'package:flutter/material.dart';

class FoulsPage extends StatefulWidget {
  @override
  _FoulsPageState createState() => _FoulsPageState();
}

class _FoulsPageState extends State<FoulsPage> {
  String dropdownValue = 'All White Belts and All Belts (U18)';
  List<String> divisionList = [
    'U12',
    'U16',
    'All White Belts and All Belts (U18)',
    'Blue and Purple Belts (18+)',
    'Brown and Black Belts (18+)',
    'Expert',
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
              elevation: 5.0,
              child: buildDropdownButton(),
            ),
          ),
          ListTile(
            title: Text(
              'SEVERE TECHNICAL FOULS',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'FreeSans',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  for (var item in foulList)
                    ListTile(
                      title: Text('$item'),
                      trailing: Icon(Icons.check),
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
        ],
      ),
    );
  }
}
