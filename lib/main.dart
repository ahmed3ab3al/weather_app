import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/core/api/dio_consumer.dart';
import 'package:weather_app/cubit/bloc_observer.dart';
import 'package:weather_app/cubit/cubit.dart';
import 'package:weather_app/cubit/states.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const MyApp());
  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(api: DioConsumer(dio: Dio())),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            theme: ThemeData(
              colorSchemeSeed: createMaterialColor(
                AppCubit.get(context).weatherModel?.weatherCondition,
              ),
            ),
            debugShowCheckedModeBanner: false,
            home: HomeView(),
          );
        },
      ),
    );
  }
}
