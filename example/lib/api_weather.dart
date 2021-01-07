import 'package:dio/dio.dart';
import 'package:retrofit_flutter/retrofit_flutter.dart';

import 'response_weather.dart';

part 'api_weather.g.dart';

@RestApi(baseUrl: 'https://api.apishop.net')
abstract class WeatherApi {
  factory WeatherApi(Dio dio, {String baseUrl}) = _WeatherApi;

  @POST("/api/thirdpay/cart/batchAdd")
  Future<WeatherRes> get15DaysWeatherByArea(
      @BaseUrl() String baseUrl, String apiKey, String area);
}
