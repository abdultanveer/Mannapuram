import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mannapuram/model/album.dart';

void main()async{
  var response =  await fetchAlbum();
  var album = Album.fromJson(jsonDecode(response.body));
  print(album.title);
}

Future<http.Response> fetchAlbum() {
  return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
}