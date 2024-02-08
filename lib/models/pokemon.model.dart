// To parse this JSON data, do
//
//     final pokeApiResponse = pokeApiResponseFromJson(jsonString);

import 'dart:convert';

PokeApiResponse pokeApiResponseFromJson(String str) =>
    PokeApiResponse.fromJson(json.decode(str));

String pokeApiResponseToJson(PokeApiResponse data) =>
    json.encode(data.toJson());

class PokeApiResponse {
  int count;
  String next;
  dynamic previous;
  List<Result> results;

  PokeApiResponse({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory PokeApiResponse.fromJson(Map<String, dynamic> json) =>
      PokeApiResponse(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  String name;
  String url;

  Result({
    required this.name,
    required this.url,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
