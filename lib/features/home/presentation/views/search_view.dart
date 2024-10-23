import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/features/home/presentation/view_models/weather_cubit/weather_cubit.dart';

import '../view_models/weather_cubit/weather_states.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, WeatherStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Search city'),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: TextField(
                  onSubmitted: (value) async {
                    WeatherCubit.get(context).getWeather(cityName: value);
                    GoRouter.of(context).pop();
                  },
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 24, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: Colors.blueAccent)),
                      suffixIcon: const Icon(Icons.search),
                      labelText: 'Search'),
                ),
              ),
            ),
          );
        });
  }
}
