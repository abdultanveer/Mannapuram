import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("app title"),
      ),
      body: Center(child: Text(
          "welcome",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: Colors.green
      ),

      )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>{},
        child: Text("click"),
      ),
    ),



  ));

  void increment(){}
}