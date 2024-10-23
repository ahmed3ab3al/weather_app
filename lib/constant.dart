import 'package:flutter/material.dart';

MaterialColor createMaterialColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition) {
    case 'Clear':
    case 'Sunny':
      return Colors.orange;
    case 'Partly cloudy':
    case 'Cloudy':
    case 'Overcast':
    case 'Mist':
    case 'Fog':
    case 'Freezing fog':
      return Colors.blueGrey;
    case 'Patchy rain possible':
    case 'Patchy light rain':
    case 'Light rain':
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Heavy rain at times':
    case 'Heavy rain':
    case 'Moderate or heavy rain shower':
    case 'Torrential rain shower':
    case 'Light rain shower':
    case 'Moderate or heavy rain snow showers':
    case 'Patchy light snow':
    case 'Patchy snow possible':
    case 'Light snow':
    case 'Light snow showers':
    case 'Patchy moderate snow':
    case 'Moderate snow':
    case 'Patchy heavy snow':
    case 'Heavy snow':
    case 'Moderate or heavy sleet':
    case 'Light sleet':
    case 'Patchy sleet possible':
    case 'Light sleet showers':
    case 'Moderate or heavy freezing rain':
    case 'Light freezing rain':
    case 'Patchy freezing drizzle possible':
    case 'Moderate or heavy sleet showers':
    case 'Light showers of ice pellets':
    case 'Moderate or heavy rain with thunder':
    case 'Patchy light rain with thunder':
    case 'Thundery outbreaks possible':
    case 'Blowing snow':
    case 'Blizzard':
    case 'Ice pellets':
      return Colors.lightBlue;

    default:
      return Colors.blue;
  }
}
