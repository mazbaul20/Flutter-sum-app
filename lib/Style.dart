

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

ButtonStyle AppButtonStyle(btnColor){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: btnColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  );
}