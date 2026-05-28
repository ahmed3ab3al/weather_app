import 'package:flutter/widgets.dart' show BuildContext;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/api/api_consumer.dart';
import 'package:weather_app/core/api/end_points.dart';
import 'package:weather_app/core/errors/exceptions.dart';
import 'package:weather_app/cubit/states.dart';
import 'package:weather_app/models/weather_model.dart';

class AppCubit extends Cubit<AppStates> {
  final ApiConsumer api;
  AppCubit({required this.api}) : super(AppInitialStates());
  static AppCubit get(BuildContext context) => BlocProvider.of(context);

  late WeatherModel weatherModel;

  Future<WeatherModel> getWeather({
    required String city,
    required int day,
  }) async {
    try {
      emit(WeatherLoadingStates());
      final response = await api.get(
        EndPoints.baseUrl,
        queryParameters: {
          ApiKeys.apiKey: ApiKeys.apiKeyValue,
          ApiKeys.dayKey: day,
          ApiKeys.searchKey: city,
        },
      );
      emit(WeatherSuccessStates());
      weatherModel = WeatherModel.fromjson(response);
    } on ServerException catch (e) {
      emit(WeatherFailureStates(error: e.errorModel.errorMessage));
     
    }
    return weatherModel;
  }
}
