import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Util/helper.dart';
import 'package:weather_app/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubit/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) {
      return GetWeatherCubit();
    }, child: Builder(builder: (context) {
      return BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Helper.getWeatherColor(
                BlocProvider.of<GetWeatherCubit>(context)
                    .weathermodel
                    ?.weatherCondition),
            //colorSchemeSeed: Colors.pink,
            //primarySwatch: Colors.orange,
            //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: false,
            // appBarTheme: AppBarTheme(
            //     color: Colors.white, backgroundColor: Colors.blueAccent[600]),
          ),
          home: const HomeView(),
        );
      });
    }));
  }

  }
