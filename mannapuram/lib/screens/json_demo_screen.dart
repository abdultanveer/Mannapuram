import 'package:flutter/material.dart';
import 'package:mannapuram/dartexamples/test_json.dart';
import 'package:http/http.dart' as http;


import '../model/album.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    body: JsonApp(),
  ),
));

class JsonApp extends StatefulWidget {
  const JsonApp({super.key});

  @override
  State<JsonApp> createState() => _JsonAppState();
}

class _JsonAppState extends State<JsonApp> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureAlbum = fetchAlbum(http.Client()) as Future<Album>;

  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child:FutureBuilder<Album>(
        future: futureAlbum,
        builder: (context,snapshot){
      if (snapshot.hasData) {
        return Text(snapshot.data!.title);
      }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
