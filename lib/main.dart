import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/bloc/bloc_observer.dart';
import 'package:weather/core/utils/app_router.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
     routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}