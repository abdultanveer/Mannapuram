import 'package:flutter/material.dart';

void main(){
  runApp(LayoutApp());
}

class LayoutApp extends StatelessWidget {
  const LayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("demo layouts"),
        ),
        body: Text("helloworld"),
      ),
    );
  }
}
