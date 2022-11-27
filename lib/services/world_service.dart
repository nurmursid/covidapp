import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:covidapp/models/world_model.dart';

class WorldService {
  String baseUrl = 'http://192.168.1.9:3000/total_data';

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
