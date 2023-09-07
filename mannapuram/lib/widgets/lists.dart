import 'package:flutter/material.dart';
import 'package:mannapuram/screens/build_layout.dart';

void main() => runApp(MaterialApp(
  home: ListApp(),
));

class ListApp extends StatelessWidget {
  const ListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(leading: Icon(Icons.map),title: Text('Map'),),
          ListTile(leading: Icon(Icons.photo_album),title: Text('Album'),),
          ListTile(leading: Icon(Icons.phone),title: Text('Phone'),),
          MyApp().buttonSection()
        ],
      ),
    );
  }
}
