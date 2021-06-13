import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PointsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              AppLocalizations.of(context).twoPointsCaps,
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
                Text(AppLocalizations.of(context).twoPoints,
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
                Text(AppLocalizations.of(context).twoPoints,
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
                Text(AppLocalizations.of(context).twoPoints,
                    style: TextStyle(fontSize: 16, fontFamily: 'FreeSans')),
              ],
            ),
          ),
          ListTile(
            title: Text(
              AppLocalizations.of(context).threePointsCaps,
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
                Text(AppLocalizations.of(context).threePoints,
                    style: TextStyle(fontSize: 16, fontFamily: 'FreeSans')),
              ],
            ),
          ),
          ListTile(
            title: Text(
              AppLocalizations.of(context).fourPointsCaps,
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
                Text(AppLocalizations.of(context).fourPoints,
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
                Text(AppLocalizations.of(context).fourPoints,
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
                Text(AppLocalizations.of(context).fourPoints,
                    style: TextStyle(fontSize: 16, fontFamily: 'FreeSans')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
