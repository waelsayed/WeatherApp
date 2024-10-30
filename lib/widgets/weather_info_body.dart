import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Util/helper.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  final WeatherModel weatherModel;
  const WeatherInfoBody({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            colors: [
              Helper.getWeatherColor(weatherModel.weatherCondition)[100]!,
              Helper.getWeatherColor(weatherModel.weatherCondition)[200]!,
              Helper.getWeatherColor(weatherModel.weatherCondition)[400]!,
              Helper.getWeatherColor(weatherModel.weatherCondition)[600]!,
              Helper.getWeatherColor(weatherModel.weatherCondition)[800]!,
            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                weatherModel.cityName,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Updated at ${weatherModel.date.hour}:${weatherModel.date.minute}",
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              Row(
                children: [
                  const Expanded(
                    child: Image(
                      image: AssetImage('assets/images/rainy.png'),
                      //fit: BoxFit.cover,
                      width: 80,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      weatherModel.temp,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "max temp:${weatherModel.maxTemp}",
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "min temp:${weatherModel.minTemp}",
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Text(
                weatherModel.weatherCondition,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
