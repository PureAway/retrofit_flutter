import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'response_weather.g.dart';

@JsonSerializable()
class WeatherRes {
  int statusCode = 200;
  String desc;
  // Result result;

  WeatherRes({this.statusCode, this.desc});

  factory WeatherRes.fromJson(Map<String, dynamic> json) =>
      _$WeatherResFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResToJson(this);
}
