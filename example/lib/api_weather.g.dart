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
  Future<dynamic> get15DaysWeatherByArea(baseUrl, options, apiKey, area) async {
    ArgumentError.checkNotNull(baseUrl, 'baseUrl');
    ArgumentError.checkNotNull(options, 'options');
    ArgumentError.checkNotNull(apiKey, 'apiKey');
    ArgumentError.checkNotNull(area, 'area');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'apiKey': apiKey, r'area': area};
    final _data = <String, dynamic>{};
    final newOptions = newRequestOptions(options);
    newOptions.extra?.addAll(_extra);
    newOptions.headers?.addAll(<String, dynamic>{});
    final _result = await _dio.request(
        '$baseUrl/common/weather/get15DaysWeatherByArea',
        queryParameters: queryParameters,
        options: newOptions.copyWith(method: 'GET'),
        data: _data);
    final value = _result.data;
    return value;
  }

  Options newRequestOptions(Options options) {
    return Options(
      method: options.method,
      sendTimeout: options.sendTimeout,
      receiveTimeout: options.receiveTimeout,
      extra: options.extra,
      headers: options.headers,
      responseType: options.responseType,
      contentType: options.contentType.toString(),
      validateStatus: options.validateStatus,
      receiveDataWhenStatusError: options.receiveDataWhenStatusError,
      followRedirects: options.followRedirects,
      maxRedirects: options.maxRedirects,
      requestEncoder: options.requestEncoder,
      responseDecoder: options.responseDecoder,
    );
  }
}
