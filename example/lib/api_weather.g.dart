// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_weather.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _WeatherApi implements WeatherApi {
  _WeatherApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://api.apishop.net';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<dynamic> get15DaysWeatherByArea(baseUrl, apiKey, area) async {
    ArgumentError.checkNotNull(baseUrl, 'baseUrl');
    ArgumentError.checkNotNull(apiKey, 'apiKey');
    ArgumentError.checkNotNull(area, 'area');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'apiKey': apiKey, r'area': area};
    final _data = <String, dynamic>{};
    final _result = await _dio.request('/common/weather/get15DaysWeatherByArea',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return value;
  }
}
