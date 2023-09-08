import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mannapuram/model/screen_args_box.dart';
import 'package:mannapuram/screens/extract_args_screen.dart';

void main() => runApp(MaterialApp(
      routes: {
        ExtractArgsScreen.routeName : (context)=> const ExtractArgsScreen()
      },
      home: HomeScreen(),
    ));

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home screen"),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context,
              ExtractArgsScreen.routeName,
               arguments: ScreenArgsBox("some title", "some message"));
        },
        child: Text('navigate to extractargs screen'),
      ),
    );
  }
}
