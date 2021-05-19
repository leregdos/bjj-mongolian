import 'package:flutter/material.dart';

class PointsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  '2 POINTS',
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
                      'Takedown',
                      style: TextStyle(fontSize: 16, fontFamily: 'FreeSans'),
                    ),
                    Text('2 Points',
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
                      'Knee on Belly',
                      style: TextStyle(fontSize: 16, fontFamily: 'FreeSans'),
                    ),
                    Text('2 Points',
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
                      'Sweep',
                      style: TextStyle(fontSize: 16, fontFamily: 'FreeSans'),
                    ),
                    Text('2 Points',
                        style: TextStyle(fontSize: 16, fontFamily: 'FreeSans')),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  '3 POINTS',
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
                      'Guard Pass',
                      style: TextStyle(fontSize: 16, fontFamily: 'FreeSans'),
                    ),
                    Text('3 Points',
                        style: TextStyle(fontSize: 16, fontFamily: 'FreeSans')),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  '4 POINTS',
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
                      'Mount',
                      style: TextStyle(fontSize: 16, fontFamily: 'FreeSans'),
                    ),
                    Text('4 Points',
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
                      'Back Mount',
                      style: TextStyle(fontSize: 16, fontFamily: 'FreeSans'),
                    ),
                    Text('4 Points',
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
                      'Back Control',
                      style: TextStyle(fontSize: 16, fontFamily: 'FreeSans'),
                    ),
                    Text('4 Points',
                        style: TextStyle(fontSize: 16, fontFamily: 'FreeSans')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
