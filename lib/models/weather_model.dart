class WeatherModel {
  final String cityName;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final DateTime date;
  final String image;
  final String weatherCondition;

  WeatherModel({
    required this.cityName,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.date,
    required this.image,
    required this.weatherCondition,
  });

  factory WeatherModel.fromjson(Map<String, dynamic> jsonData) {
    return WeatherModel(
      cityName: jsonData['location']['name'],
      date: DateTime.parse(jsonData['current']['last_updated']),
      temp: jsonData['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: jsonData['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: jsonData['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherCondition:jsonData['forecast']['forecastday'][0]['day']['condition']['text'],
      image: jsonData['forecast']['forecastday'][0]['day']['condition']['icon'],
    );
  }
}
