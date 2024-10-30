import 'package:flutter/material.dart';
import 'package:weather_app/cubit/get_weather_cubit/get_weather_cubit.dart';


class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = GetWeatherCubit.get(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search city",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onSubmitted: (value) {
              cubit.getCurrentWeather(value);
              Navigator.pop(context);
              // HomeView().FireMe();
            },
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              label: Text('Search'),
              suffixIcon: Icon(Icons.search),
              hintText: "Enter city name",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
