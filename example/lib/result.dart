import 'package:json_annotation/json_annotation.dart';

import 'day.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  String area;
  String areaid;
  List<Day> dayList;
  int ret_code;

  Result({this.area, this.areaid, this.dayList, this.ret_code});

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
