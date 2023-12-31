import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: HomeWidget()));
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}


class _HomeWidgetState extends State<HomeWidget> {
  int counter = 0;

  void _increment() {
    setState(() {
      counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("header app bar"),
      ),
      body: Center(
          child: Text(
            "you have clicked \n $counter no of times",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.deepOrange
            ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}



