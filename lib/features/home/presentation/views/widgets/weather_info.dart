import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/home/presentation/view_models/weather_cubit/weather_cubit.dart';

import '../../../../../constant.dart';
import '../../../data/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});

  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<WeatherCubit>(context).weatherModel!;
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              createMaterialColor(weatherModel.weatherCondition),
              createMaterialColor(weatherModel.weatherCondition)[300]!,
              createMaterialColor(weatherModel.weatherCondition)[50]!
            ])),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              weatherModel.cityName,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text(
              'update at ${weatherModel.date.hour}:${weatherModel.date.minute}',
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: NetworkImage('https:${weatherModel.image}'),
                ),
                Text(
                  weatherModel.temp.toString(),
                  style: const TextStyle(
                      fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Text(
                      'MaxTemp: ${weatherModel.maxTemp.round()}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'MinTemp: ${weatherModel.minTemp.round()}',
                      style: const TextStyle(fontSize: 16),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              weatherModel.weatherCondition,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ]),
        ));
  }
}
