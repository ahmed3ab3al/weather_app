import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/states.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widget/no_weather_info.dart';
import 'package:weather_app/widget/weather_info_body.dart';

import '../cubit/cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Weather App',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white, size: 30),
            onPressed: () {
              navigateTo(context, SearchView());
            },
          ),
        ],
      ),
      body: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is AppInitialStates) {
            return NoWeatherInfoBody();
          } else if (state is WeatherSuccessStates) {
            return WeatherInfoBody();
          } else if (state is WeatherLoadingStates) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Center(
              child: Text(
                'Oops There Is An Error , Try Again',
                style: TextStyle(fontSize: 20),
              ),
            );
          }
        },
      ),
    );
  }
}
