// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_weather.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _WeatherApi implements WeatherApi {
  _WeatherApi(this._dio) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl = 'https://api.apishop.net';
  }

  final Dio _dio;

  late String baseUrl;

  @override
  Future<dynamic> get15DaysWeatherByArea(baseUrl, apiKey, area) async {
    ArgumentError.checkNotNull(baseUrl, 'baseUrl');
    ArgumentError.checkNotNull(apiKey, 'apiKey');
    ArgumentError.checkNotNull(area, 'area');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'apiKey': apiKey, r'area': area};
    final _data = <String, dynamic>{};
    final _result = await _dio.request(
        '$baseUrl/common/weather/get15DaysWeatherByArea',
        queryParameters: queryParameters,
        options:
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra),
        data: _data);
    final value = _result.data;
    return value;
  }
}
