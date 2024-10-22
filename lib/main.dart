import 'package:flutter/material.dart';
import 'package:weather/core/utils/app_router.dart';
import 'package:weather/home/presentation/views/widgets/no_weather_info.dart';

void main() {
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

