import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/constant.dart';
import 'package:weather/core/api/dio_helper.dart';
import 'package:weather/core/bloc/bloc_observer.dart';
import 'package:weather/core/utils/app_router.dart';
import 'package:weather/home/presentation/view_models/weather_cubit/weather_cubit.dart';

import 'home/presentation/view_models/weather_cubit/weather_states.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => WeatherCubit(DioHelper(dio: Dio())),
        child: Builder(builder: (context) {
          return BlocBuilder<WeatherCubit, WeatherStates>(
              builder: (context, state) {
            return MaterialApp.router(
                routerConfig: AppRouter.router,
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                    appBarTheme: const AppBarTheme(elevation: 4),
                    useMaterial3: false,
                    primarySwatch: createMaterialColor(WeatherCubit.get(context)
                        .weatherModel
                        ?.weatherCondition),
                    scaffoldBackgroundColor: Colors.white));
          });
        }));
  }
}
