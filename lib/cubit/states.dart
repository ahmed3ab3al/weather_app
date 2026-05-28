abstract class AppStates {}

class AppInitialStates extends AppStates {}

class WeatherLoadingStates extends AppStates {}

class WeatherSuccessStates extends AppStates {}

class WeatherFailureStates extends AppStates {
  final String error;
  WeatherFailureStates({required this.error});
}
