import 'package:dio/dio.dart';
import 'package:retrofit_flutter/retrofit_flutter.dart';

import 'response_weather.dart';

part 'api_weather.g.dart';

@RestApi(baseUrl: 'https://api.apishop.net')
abstract class WeatherApi {
  factory WeatherApi(Dio dio) = _WeatherApi;

  @GET('/common/weather/get15DaysWeatherByArea')
  Future<dynamic> get15DaysWeatherByArea(@BaseUrl() String baseUrl,
      @Query('apiKey') String apiKey, @Query('area') String area);
}
