import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key,});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('cityName',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                ),),
              Text('update at',style: TextStyle(
                fontSize: 24,
              ),),
              SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: NetworkImage(''),),
                  Text('temp',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                    ),),
                  Column(
                    children: [
                      Text('MaxTemp:',style:
                      TextStyle(
                          fontSize: 16
                      ),),
                      Text('MinTemp: ',style:
                      TextStyle(
                          fontSize: 16
                      ),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 16,),
              Text('weatherCondition',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                ),
              ),
            ]
        ),
      );
  }
}
