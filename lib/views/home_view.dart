import 'package:flutter/material.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widget/no_weather_info.dart';

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
      body: NoWeatherInfoBody(),
    );
  }


}
