import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mannapuram/model/album.dart';

void main()async{
  var response =  await fetchAlbum(http.Client());
 /* var album = Album.fromJson(jsonDecode(response.body));
  print(album.title);*/
}

Future<Album> fetchAlbum(http.Client client) async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  return Album.fromJson(jsonDecode(response.body));

}