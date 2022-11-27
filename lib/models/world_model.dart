// To parse this JSON data, do
//
//     final World = WorldFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class World {
  World({
    required this.TotalConfirmed,
    required this.TotalDeaths,
    required this.TotalRecovered,
  });

  final int TotalConfirmed;
  final int TotalDeaths;
  final int TotalRecovered;

  factory World.fromRawJson(String str) => World.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory World.fromJson(Map<String, dynamic> json) => World(
        TotalConfirmed: json["TotalConfirmed"],
        TotalDeaths: json["TotalDeaths"],
        TotalRecovered: json["TotalRecovered"],
      );

  Map<String, dynamic> toJson() => {
        "TotalConfirmed": TotalConfirmed,
        "TotalDeaths": TotalDeaths,
        "TotalRecovered": TotalRecovered,
      };
}
