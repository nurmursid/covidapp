import 'package:flutter/cupertino.dart';
import 'package:covidapp/models/world_model.dart';
import 'package:covidapp/services/world_service.dart';

class WorldProvider with ChangeNotifier {
  List<World> _world = [];
  List<World> get world => _world;
  set world(List<World> world) {
    _world = world;
    notifyListeners();
  }

  Future<List<World>> getWorld() async {
    try {
      List<World> world = await WorldService().getWorld();
      _world = world;
      return world;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
