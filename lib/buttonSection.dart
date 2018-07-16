import 'package:flutter/material.dart';

Column buildButtonColumn(IconData icon, String labelText, BuildContext context) {
  Color color = Theme.of(context).primaryColor;
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8.0),
        child: Text(
          labelText,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      )
    ],
  );
}

Widget getButtonSection(BuildContext context) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildButtonColumn(Icons.call, 'CALL', context),
        buildButtonColumn(Icons.near_me, 'ROUTE', context),
        buildButtonColumn(Icons.share, 'SHARE', context),
      ],
    ),
  );
}