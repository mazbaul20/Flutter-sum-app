

import 'package:flutter/material.dart';

InputDecoration AppInputStyle(labelText){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(),
    // label: Text(labelText),
    labelText: labelText,
    hintText: labelText,
  );
}

TextStyle HeadTextStyle(){
  return TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w800,
  );
}

ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: Colors.blue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  );
}