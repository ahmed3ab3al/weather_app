import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/bloc_observer.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const MyApp());
  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}

Future<dynamic> navigateTo(BuildContext context, Widget screen) {
  return Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) {
        return screen;
      },
    ),
  );
}
