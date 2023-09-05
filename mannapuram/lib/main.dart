import 'package:flutter/material.dart';

void main() {
runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text("header app bar title"),
    ),
    body: Center(
        child: Text(
            "welcome to flutter",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrange
        ),
        )
    ),
  ),
));
}
