// class Forcast {
//   final ForecastDay forecastDays;
//   const Forcast({required this.forecastDays});
//   factory Forcast.fromJson(Map<String, dynamic> json) {
//     return Forcast(forecastDays:json['forecast']['forecastday']);
//   }
// }

// class ForecastDay {
//   final Day day;
//   const ForecastDay({required this.day});

//   factory ForecastDay.fromJson(Map<String, dynamic> json) {
//     return ForecastDay(
//         day: Day(
//             mintempC: json['day']['mintemp_c'],
//             maxtempC: json['day']['maxtemp_c'],
//             avgtempC: json['day']['avgtemp_c'],
//             condition: Condition(
//                 text: json['day']['condition']['text'],
//                 icon: json['day']['condition']['icon'],
//                 code: json['day']['condition']['code'])));
//   }
// }

// class Day {
//   final double maxtempC;
//   final double mintempC;
//   final double avgtempC;
//   final Condition condition;
//   const Day(
//       {required this.mintempC,
//       required this.maxtempC,
//       required this.avgtempC,
//       required this.condition});

//   // factory Day.fromJson(Map<String, dynamic> json) {
//   //   return Day(
//   //       mintempC: json['mintemp_c'],
//   //       maxtempC: json['maxtemp_c'],
//   //       avgtempC: json['avgtemp_c'],
//   //       condition: Condition(
//   //           text: json['condition']['text'],
//   //           icon: json['condition']['icon'],
//   //           code: json['condition']['code']));
//   // }
// }

// class Condition {
//   final String text;
//   final String icon;
//   final int code;
//   const Condition({required this.text, required this.icon, required this.code});
// }
