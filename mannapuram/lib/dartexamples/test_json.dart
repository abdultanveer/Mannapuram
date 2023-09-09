import 'package:http/http.dart' as http;

void main()async{
  var response =  await fetchAlbum();
  print(response.body);
}

Future<http.Response> fetchAlbum() {
  return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
}