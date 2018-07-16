import 'package:flutter/material.dart';

Widget getTitleSection() {
  return Container(
    padding: const EdgeInsets.all(32.0),
    child: getContainerRow(),
  );
}

Row getContainerRow() {
  return Row(
    children: <Widget>[
      new Expanded(
          child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: new Text(
              'Lake Campground',
              style: new TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'HHHHH',
            style: TextStyle(
              color: Colors.grey[500],
            ),
          )
        ],
      )),
      new Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      new Text('41'),
    ],
  );
}
