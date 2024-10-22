import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/api/end_points.dart';
import 'package:weather/core/errors/exception.dart';
import 'package:weather/home/data/models/weather_model.dart';
import 'package:weather/home/presentation/view_models/weather_cubit/weather_states.dart';

import '../../../../../core/api/api_helper.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  final ApiHelper apiHelper;
  WeatherModel? weatherModel;

  WeatherCubit(this.apiHelper) : super(WeatherInitialState());

  static WeatherCubit get(context) => BlocProvider.of(context);

  getWeather({required String cityName}) async {
    emit(WeatherLoadingState());
    try {
      final response = await apiHelper.get(EndPoints.search, queryParameters: {
        ApiKeys.searchKey: cityName,
        ApiKeys.apiKey: EndPoints.apiKey
      });
      emit(
          GetSearchSuccessState(weatherModel: WeatherModel.fromJson(response)));
      weatherModel = WeatherModel.fromJson(response);
    } on ServerException catch (e) {
      emit(GetSearchErrorState(error: e.errorModel.message));
    }
  }
}
