import 'package:dio/dio.dart';
import 'package:weather_app/models/forecast_day_ref.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'b31fec00fd234cb697a205218241910';
  WeatherService({required this.dio});

  Future<WeatherModel> getWeather({required String city}) async {
    try {
      Response response =
          await dio.get("$baseUrl/forecast.json?key=$apiKey&q=$city");
      Map<String, dynamic> jsonData = response.data;
      Location location = Location.fromJson(jsonData);
      Forecast forecast = Forecast.fromJson(jsonData);
      Day today = forecast.forecastDays[0].day;
      return WeatherModel(
          cityName: location.cityName,
          date: location.date,
          image: today.condition.icon,
          temp: today.avgtempC.toString(),
          maxTemp: today.maxtempC.toString(),
          minTemp: today.mintempC.toString(),
          weatherCondition: today.condition.text);
    } on DioException {
      return WeatherModel(
          cityName: '',
          date: DateTime.now(),
          temp: '',
          maxTemp: '',
          minTemp: '',
          weatherCondition: '');
    }
  }
}
