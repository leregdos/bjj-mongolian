import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

class WeightPage extends StatefulWidget {
  @override
  _WeightPageState createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  String gender = 'Male';
  String dropdownValue = 'Adults';
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
            'GENDER',
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
              ToggleSwitch(
                minWidth: 90.0,
                initialLabelIndex: 1,
                cornerRadius: 20.0,
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                labels: ['Male', 'Female'],
                icons: [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
                activeBgColors: [Colors.blue, Colors.pink],
                onToggle: (index) {
                  index == 0 ? gender = 'Male' : gender = 'Female';
                },
              ),
            ],
          ),
        ),
        ListTile(
          title: Text(
            'AGE DIVISION',
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
            'WEIGHT DIVISIONS',
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
                  '$duration minutes',
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
                  duration = durationList[divisionList.indexOf(newValue)];
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
