import 'package:json_annotation/json_annotation.dart';

part 'day.g.dart';

@JsonSerializable()
class Day {
  String? area;
  String? areaid;
  String? day_air_temperature;
  String? day_weather;
  String? day_weather_code;
  String? day_weather_pic;
  String? day_wind_direction;
  String? day_wind_power;
  String? daytime;
  String? night_air_temperature;
  String? night_weather;
  String? night_weather_code;
  String? night_weather_pic;
  String? night_wind_direction;

  Day(
      {this.area,
      this.areaid,
      this.day_air_temperature,
      this.day_weather,
      this.day_weather_code,
      this.day_weather_pic,
      this.day_wind_direction,
      this.day_wind_power,
      this.daytime,
      this.night_air_temperature,
      this.night_weather,
      this.night_weather_code,
      this.night_weather_pic,
      this.night_wind_direction});

  factory Day.fromJson(Map<String, dynamic> json) =>
      _$DayFromJson(json);

  Map<String, dynamic> toJson() => _$DayToJson(this);
}
