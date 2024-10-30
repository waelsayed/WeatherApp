class Location {
  final DateTime date;
  final String cityName;

  Location({required this.date, required this.cityName});
  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
        date:DateTime.parse(json["location"]["localtime"]),
        cityName: json["location"]["name"]);
  }
}

class Forecast {
  final List<ForecastDay> forecastDays;

  Forecast({required this.forecastDays});

  factory Forecast.fromJson(Map<String, dynamic> json) {
    var list = json['forecast']['forecastday'] as List;
    List<ForecastDay> forecastDayList =
        list.map((i) => ForecastDay.fromJson(i)).toList();
    return Forecast(forecastDays: forecastDayList);
  }
}

class ForecastDay {
  final Day day;

  ForecastDay({required this.day});

  factory ForecastDay.fromJson(Map<String, dynamic> json) {
    return ForecastDay(
      day: Day.fromJson(json['day']),
    );
  }
}

class Day {
  final double maxtempC;
  final double mintempC;
  final double avgtempC;
  final Condition condition;

  Day({
    required this.mintempC,
    required this.maxtempC,
    required this.avgtempC,
    required this.condition,
  });

  factory Day.fromJson(Map<String, dynamic> json) {
    return Day(
      maxtempC: (json['maxtemp_c'] as num).toDouble(),
      mintempC: (json['mintemp_c'] as num).toDouble(),
      avgtempC: (json['avgtemp_c'] as num).toDouble(),
      condition: Condition.fromJson(json['condition']),
    );
  }
}

class Condition {
  final String text;
  final String icon;
  final int code;

  Condition({
    required this.text,
    required this.icon,
    required this.code,
  });

  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      text: json['text'],
      icon: json['icon'],
      code: json['code'],
    );
  }
}
