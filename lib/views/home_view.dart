import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/api/dio_consumer.dart';
import 'package:weather_app/cubit/cubit.dart';
import 'package:weather_app/cubit/states.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widget/no_weather_info.dart';
import 'package:weather_app/widget/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(api: DioConsumer(dio: Dio())),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
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
            body: WeatherInfoBody(),
          );
        },
      ),
    );
  }
}
