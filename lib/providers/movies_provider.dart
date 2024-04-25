import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MoviesProvider extends ChangeNotifier {
  MoviesProvider() {
    print('MoviesProvider constructor');
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    String _apiKey = '4b95e8a54096c1d6576b09e0399de53a';
    String _baseUrl = 'api.themoviedb.org';
    String _language = 'es-ES';

    var url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1',
    });

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    final Map<String, dynamic> decodedData = json.decode(response.body);
    print(decodedData['dates']);
  }
}
