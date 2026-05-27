import 'package:flutter/material.dart';
import 'package:weather_app/widget/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search City', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white, size: 25),
      ),
      body: SearchViewBody(),
    );
  }
}
