import 'package:mannapuram/dartexamples/test_json.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mannapuram/model/album.dart';
import 'package:mockito/mockito.dart';

import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';

import 'mockito_test.mocks.dart';


@GenerateMocks([http.Client])
void main() {
  group('fetchAlbum', () {
    test('returns an Album if the http call completes successfully', () async {
      final client = MockClient();
      // Use Mockito to return a successful response when it calls the
      // provided http.Client.
      when(client
          .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
          .thenAnswer((_) async =>
          http.Response('{"userId": 1, "id": 2, "title": "mock mannapuram json"}', 200));

      expect(await fetchAlbum(client), isA<Album>());
    });
  });
}