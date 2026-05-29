import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/cubit.dart';
import 'package:weather_app/cubit/states.dart';
import 'package:weather_app/widget/custom_text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Search City', style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.blue,
            iconTheme: IconThemeData(color: Colors.white, size: 25),
          ),
          body: Column(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: CustomField(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    controller: controller,
                    validator: (value) {
                      return null;
                    },
                    onSubmited: (value) {
                      AppCubit.get(context).getWeather(city: value, day: 1);
                      Navigator.pop(context);
                    },
                    border: OutlineInputBorder(),
                    type: TextInputType.text,
                    label: 'Search',
                    prefixIcon: Icons.search,
                  ),
                ),
              ),
              Spacer(flex: 3),
            ],
          ),
        );
      },
    );
  }
}
