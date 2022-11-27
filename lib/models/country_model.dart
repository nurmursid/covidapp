class Country {
  Country({
    required this.id,
    required this.name,
    required this.flag,
    required this.chart,
  });
  late final int id;
  late final String name;
  late final String flag;
  late final List<Chart> chart;

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    flag = json['flag'];
    chart = List.from(json['chart']).map((e) => Chart.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['flag'] = flag;
    _data['chart'] = chart.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Chart {
  Chart({
    required this.date,
    required this.cases,
  });
  late final int date;
  late final int cases;

  Chart.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    cases = json['cases'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['date'] = date;
    _data['cases'] = cases;
    return _data;
  }
}
