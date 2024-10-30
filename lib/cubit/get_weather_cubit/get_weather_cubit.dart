import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(NoWeatherState());
  WeatherModel? weathermodel;
  static GetWeatherCubit get(context) => BlocProvider.of(context);
  // logic
   getCurrentWeather(String cityName) async{
    weathermodel =  await WeatherService(dio: Dio()).getWeather(city: cityName);
    emit(WeatherLoadedState());
  }
}
