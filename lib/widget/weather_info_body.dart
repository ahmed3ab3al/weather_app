import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'Alexandria',
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
            Icon(Icons.male, size: 60),
            Text(
              '18',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(children: [Text('Max Temp : 20'), Text('Min Temp : 20')]),
          ],
        ),
        SizedBox(height: 50),
        Text(
          'Light Rain',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        Spacer(),
      ],
    );
  }
}
