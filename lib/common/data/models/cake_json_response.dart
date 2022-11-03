class CakeJsonResponse {
  final String? id;
  final String? type;
  final String? name;
  final double? value;
  final BattersResponse? batters;
  final List<ToppingResponse>? topping;

  CakeJsonResponse({
    this.id,
    this.type,
    this.name,
    this.value,
    this.batters,
    this.topping,
  });

  static CakeJsonResponse fromJson(Map<String, dynamic> json) =>
      CakeJsonResponse(
        batters: BattersResponse.fromJson(json['batters']),
        id: json['id'],
        name: json['name'],
        topping: (json['topping'] as List<dynamic>)
            .map((e) => ToppingResponse.fromJson(e as Map<String, dynamic>))
            .toList(),
        type: json['type'],
        value: json['ppu'],
      );

  Map<String, dynamic> toJson(CakeJsonResponse json) => {
        'batters': json.batters,
        'id': json.id,
        'name': json.name,
        'topping': json.topping,
        'type': json.type,
        'ppu': json.value,
      };
}

class BattersResponse {
  List<Batter>? batter;

  BattersResponse({
    this.batter,
  });

  static BattersResponse fromJson(Map<String, dynamic> json) => BattersResponse(
        batter: (json['batter'] as List<dynamic>)
            .map((e) => Batter.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson(BattersResponse json) => {
        'batter': json.batter,
      };
}

class Batter {
  final String? id;
  final String? type;

  Batter({
    this.id,
    this.type,
  });

  static Batter fromJson(Map<String, dynamic> json) => Batter(
        id: json[''],
        type: json['type'],
      );

  Map<String, dynamic> toJson(Batter json) => {
        'id': json.id,
        'type': json.type,
      };
}

class ToppingResponse {
  final String? id;
  final String? type;

  ToppingResponse({
    this.id,
    this.type,
  });

  static ToppingResponse fromJson(Map<String, dynamic> json) => ToppingResponse(
        id: json['id'],
        type: json['type'],
      );

  Map<String, dynamic> toJson(ToppingResponse json) => {
        'id': json.id,
        'type': json.type,
      };
}
