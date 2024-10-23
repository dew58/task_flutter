import 'package:flutter/material.dart';

Widget textIn(String name, bool isDown) {
  return TextField(
    decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        hintText: '',
        labelText: name,
        helperStyle: TextStyle(color: Colors.grey),
        contentPadding: const EdgeInsets.only(left: 20, top: 15),
        suffixIcon: isDown ? Icon(Icons.keyboard_arrow_down_sharp) : null),
  );
}
