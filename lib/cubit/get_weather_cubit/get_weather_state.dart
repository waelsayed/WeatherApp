
abstract class WeatherState {}

class NoWeatherState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  // final WeatherModel weatherModel;
  // WeatherLoadedState({required this.weatherModel});
}

class WeatherFailureState extends WeatherState {
  //WeatherFailureState(super.weatherModel);
}
