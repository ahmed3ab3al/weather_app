

import '../../../data/models/weather_model.dart';

abstract class WeatherStates {}

class WeatherInitialState extends WeatherStates {}

class WeatherLoadingState extends WeatherStates {}

class GetSearchSuccessState extends WeatherStates {
  final WeatherModel weatherModel;

  GetSearchSuccessState({required this.weatherModel});
}

class GetSearchErrorState extends WeatherStates {
  final String error;

  GetSearchErrorState({required this.error});
}
