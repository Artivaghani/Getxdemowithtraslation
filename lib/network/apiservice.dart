import 'dart:convert';

import 'package:http/http.dart' as http;

class Apiservice {
  //https://jsonplaceholder.typicode.com/albums/1
  static fatchdata() async {
    var response =
        await http.get(Uri.parse('http://myjson.dit.upm.es/api/bins/gbt5'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
  }
}
