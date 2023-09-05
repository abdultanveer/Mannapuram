import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("app title bar"),
      ),
      body: Center(
          child: Text(
              "welcome to flutter",
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment(),
        child: Text("click"),
      ),
    ),
  ));
}

increment() {}
