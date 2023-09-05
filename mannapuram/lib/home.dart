import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("header app bar"),
      ),
      body: Center(
          child: Text(
              "welcome to flutter",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.deepOrange
            ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment(),
        child: Text("click"),
      ),
    ),
  )
  );
}

increment() {
}