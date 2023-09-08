import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mannapuram/model/screen_args_box.dart';
import 'package:mannapuram/screens/extract_args_screen.dart';

void main() => runApp(MaterialApp(
      routes: {
        ExtractArgsScreen.routeName: (context) => const ExtractArgsScreen()
      },
      home: HomeScreen(),
    ));

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home screen"),
      ),
      body: Column(
        children: [
          TextFormField(controller: controller,),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, ExtractArgsScreen.routeName,
                  arguments: ScreenArgsBox("some title", controller.text));
            },
            child: Text('navigate to extractargs screen'),
          ),
        ],
      ),
    );
  }
}
