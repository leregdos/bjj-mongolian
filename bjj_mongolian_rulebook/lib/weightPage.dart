import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

class WeightPage extends StatefulWidget {
  @override
  _WeightPageState createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  Map maleWeightDivision = {
    'U10+': ['21', '24', '27', '30', '34', '38', '42', '42+'],
    'U14': ['24', '27', '30', '34', '38', '42', '46', '50', '50+'],
    'U14+': ['30', '34', '38', '42', '46', '50', '55', '60', '66', '66+'],
    'U16+': ['38', '42', '46', '50', '55', '60', '66', '73', '73+'],
    'U18+': ['46', '50', '55', '60', '66', '73', '81', '81+'],
    'Adults': ['56', '62', '69', '77', '85', '94', '94+'],
    'Masters': ['56', '62', '69', '77', '85', '94', '94+']
  };
  Map femaleWeightDivision = {
    'U10+': ['20', '22', '25', '28', '32', '36', '40', '40+'],
    'U14': ['22', '25', '28', '32', '36', '40', '44', '48', '48+'],
    'U14+': ['25', '28', '32', '36', '40', '44', '48', '52', '57', '57+'],
    'U16+': ['32', '36', '40', '44', '48', '52', '57', '63', '63+'],
    'U18+': ['40', '44', '48', '52', '57', '63', '70', '70+'],
    'Adults': ['45', '48', '52', '57', '63', '70', '70+'],
    'Masters': ['45', '48', '52', '57', '63', '70', '70+']
  };
  String gender = 'Male';
  String dropdownValue = 'Adults';
  List<String> divisionList = [
    'U10+',
    'U14',
    'U14+',
    'U16+',
    'U18+',
    'Adults',
    'Masters'
  ];
  List<int> ageList = [10, 12, 14, 16, 18, 18, 35];
  int age = 18;
  int initialIndex = 0;

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
                initialLabelIndex: initialIndex,
                cornerRadius: 20.0,
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                labels: ['Male', 'Female'],
                icons: [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
                activeBgColors: [Colors.blue, Colors.pink],
                onToggle: (index) {
                  setState(() {
                    index == 0 ? gender = 'Male' : gender = 'Female';
                    initialIndex = index;
                  });
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
        // gender == 'Male' ? maleWeightDivision[dropdownValue]
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (var item in gender == 'Male'
                    ? maleWeightDivision[dropdownValue]
                    : femaleWeightDivision[dropdownValue])
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Card(
                      elevation: 5.0,
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Center(
                          child: Container(
                            child: Text(
                              '$item kg',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'FreeSans',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
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
