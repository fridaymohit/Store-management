import 'package:flutter/material.dart';

Dialog leadDialog4 = Dialog(
  child: Container(
    height: 100.0,
    width: 360.0,
    color: Colors.blueGrey,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            'Data Saved Successfully',
            style:
            TextStyle(color: Colors.black, fontSize: 22.0,fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  ),
);
