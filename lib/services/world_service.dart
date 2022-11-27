import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:covidapp/models/world_model.dart';

class WorldService {
  String baseUrl = 'https://my-json-server.typicode.com/nurmursid/covidapp/db';

  Future<List<World>> getWorld() async {
    var url = Uri.parse(baseUrl);
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      List<World> world = [];
      for (var item in data) {
        world.add(World.fromJson(item));
      }

      return world;
    } else {
      throw Exception('Failed getting world');
    }
  }
}
