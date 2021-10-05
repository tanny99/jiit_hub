import 'package:flutter/material.dart';
const style1=TextStyle(
  color: Colors.blue,fontSize: 35 ,decoration: TextDecoration.none,
  fontFamily: 'Roboto',
);
const style2=TextStyle(
  color: Colors.black,fontSize: 14 ,decoration: TextDecoration.none,
  fontFamily: 'Roboto',
);
const style3=TextStyle(
  color: Colors.white,fontSize: 16 ,decoration: TextDecoration.none,
  fontFamily: 'Roboto',
);
const kTextFieldDecoration = InputDecoration(
    hintText: 'Enter a value',
    fillColor: Colors.black,
    focusColor: Colors.black,
    hoverColor: Colors.black,
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    hintStyle: TextStyle(color: Colors.black, fontSize: 12));
const kTextFieldDecoration2 = InputDecoration(
    hintText: 'Enter a value',
    fillColor: Colors.black,
    focusColor: Colors.black,
    hoverColor: Colors.black,
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    hintStyle: TextStyle(color: Colors.black, fontSize: 12));