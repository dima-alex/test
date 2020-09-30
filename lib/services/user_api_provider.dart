import 'dart:convert';
import 'package:bloc_network_example/models/user.dart';
import 'package:http/http.dart' as http;

class UserProvider {
  // http://jsonplaceholder.typicode.com/users

  // ignore: missing_return
  Future<List<Data>> getUser() async {
    final response = await http.get(
      'https://catfact.ninja/facts?limit=2',
//      'https://api.thecatapi.com/v1/images/search?limit=10&mime_types=jpg,png#',
    );

    if (response.statusCode == 200) {
      final List<dynamic> userJson = json.decode(response.body);
      return userJson.map((json) => Data.fromJson(json)).toList();
    } else {
      print(response.statusCode.toString());
    }
  }
}
