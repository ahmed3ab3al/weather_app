import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/home/presentation/view_models/weather_cubit/weather_cubit.dart';
import 'package:weather/home/presentation/view_models/weather_cubit/weather_states.dart';
import 'package:weather/home/presentation/views/search_view.dart';
import 'package:weather/home/presentation/views/widgets/no_weather_info.dart';
import 'package:weather/home/presentation/views/widgets/weather_info.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Weather App'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SearchView();
                  }));
                },
                icon: const Icon(Icons.search))
          ],
        ),
        body: BlocBuilder<WeatherCubit, WeatherStates>(
            builder: (context, state) {
              if (state is WeatherInitialState) {
                return const NoWeatherInfo();
              } else if (state is GetSearchSuccessState) {
                return   WeatherInfoBody(
                  weatherModel: state.weatherModel,
                );
              } else {
                return const Text('oops something went wrong');
              }
            }));
  }
}
