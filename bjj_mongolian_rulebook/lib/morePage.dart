import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  int initialIndex = 0;
  String language = 'English';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              'About the Rules',
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
                  'Rules Date',
                  style: TextStyle(fontSize: 16, fontFamily: 'FreeSans'),
                ),
                Text('2020 v2.1',
                    style: TextStyle(fontSize: 16, fontFamily: 'FreeSans')),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rules Online',
                  style: TextStyle(fontSize: 16, fontFamily: 'FreeSans'),
                ),
                Text('https://bit.ly/3ggpkQL',
                    style: TextStyle(fontSize: 16, fontFamily: 'FreeSans')),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Website',
                  style: TextStyle(fontSize: 16, fontFamily: 'FreeSans'),
                ),
                Text('http://jjau.org/index.php?id=2',
                    style: TextStyle(fontSize: 16, fontFamily: 'FreeSans')),
              ],
            ),
          ),
          ListTile(
            title: Text(
              'About this application',
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
                  'Version',
                  style: TextStyle(fontSize: 16, fontFamily: 'FreeSans'),
                ),
                Text('1.0.0',
                    style: TextStyle(fontSize: 16, fontFamily: 'FreeSans')),
              ],
            ),
          ),
          ListTile(
            title: Text(
              'Change Language',
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
                    minWidth: 90.0,
                    initialLabelIndex: initialIndex,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    labels: ['English', 'Mongolian'],
                    activeBgColors: [Colors.blue, Colors.pink],
                    onToggle: (index) {
                      setState(() {
                        index == 0
                            ? language = 'English'
                            : language = 'Mongolian';
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
