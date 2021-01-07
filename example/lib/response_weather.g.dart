// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherRes _$WeatherResFromJson(Map<String, dynamic> json) {
  return WeatherRes(
    statusCode: json['statusCode'] as int,
    desc: json['desc'] as String,
    result: json['result'] == null
        ? null
        : Result.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WeatherResToJson(WeatherRes instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'desc': instance.desc,
      'result': instance.result,
    };
