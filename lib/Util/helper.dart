import 'package:flutter/material.dart';

class Helper {
  static MaterialColor getWeatherColor(String? condition) {
    if (condition == null) {
      return Colors.blue;
    }

    switch (condition) {
      case "Sunny":
      case "Clear":
        return Colors.orange;

      case "Partly cloudy":
      case "Cloudy":
      case "Overcast":
        return Colors.grey;

      case "Mist":
      case "Fog":
      case "Freezing fog":
        return Colors.grey;

      case "Patchy rain possible":
      case "Light rain":
      case "Moderate rain":
      case "Heavy rain":
      case "Rain":
      case "Torrential rain shower":
        return Colors.blue;

      case "Snow":
      case "Blowing snow":
      case "Blizzard":
      case "Patchy snow possible":
      case "Light snow":
      case "Moderate snow":
      case "Heavy snow":
        return Colors.grey;

      default:
        return Colors.blue;
    }
  }

}