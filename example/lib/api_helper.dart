import 'dart:async';
import 'package:dio/dio.dart';
import 'api_weather.dart';
import 'dio_log_interceptor.dart';

class ApiHelper {
  ApiHelper.__privateConstructor();

  static final ApiHelper _instance = ApiHelper.__privateConstructor();
  static BaseOptions? _options;
  static late Dio _client;
  static final api = WeatherApi(
    _client,
  );

  factory ApiHelper() {
    _options = BaseOptions(connectTimeout: 10000, receiveTimeout: 10000);
    _client = Dio(_options);
    _client.interceptors.add(DioLogInterceptor());
    return _instance;
  }

  /// 发送短信验证码
  Future<dynamic> get15DaysWeatherByArea(String area) async {
    const apiKey = 'y2vSiRp765e535d7cf39d0eb2309f204e65bb67d9f6ce82';
    final _options =
        Options(sendTimeout: 100000, receiveTimeout: 100000);
    return api.get15DaysWeatherByArea(
        'https://api.apishop.net', _options, apiKey, area);
  }
}
