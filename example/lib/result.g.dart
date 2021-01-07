// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
    area: json['area'] as String,
    areaid: json['areaid'] as String,
    dayList: (json['dayList'] as List)
        ?.map((e) => e == null ? null : Day.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    ret_code: json['ret_code'] as int,
  );
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'area': instance.area,
      'areaid': instance.areaid,
      'dayList': instance.dayList,
      'ret_code': instance.ret_code,
    };
