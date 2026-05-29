import 'package:flutter/material.dart';
import 'package:weather_app/cubit/cubit.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel = AppCubit.get(context).weatherModel!;
    return Column(
      children: [
        Spacer(),
        Text(
          weatherModel.cityName,
          style: TextStyle(
            color: Colors.black,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Updated at 10:25',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        SizedBox(height: 64),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network('https:${weatherModel.image}'),
            Text(
              weatherModel.temp.round().toString(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
                Text('Max Temp : ${weatherModel.maxTemp.round()}'),
                Text('Min Temp : ${weatherModel.minTemp.round()}'),
              ],
            ),
          ],
        ),
        SizedBox(height: 50),
        Text(
          weatherModel.weatherCondition,
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        Spacer(flex: 2),
      ],
    );
  }
}
