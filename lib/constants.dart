import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.white,
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  // contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: UnderlineInputBorder(
    borderSide: BorderSide(color: Color(0xff000080))
  ),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Color(0xff000080), width: 1.0),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Color(0xff000080), width: 2.0),
  ),
);