import 'package:flutter/material.dart';
import 'package:weather_app/widget/custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  SearchViewBody({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomField(
          controller: controller,
          validator: (value) {},
          border: OutlineInputBorder(),
          type: TextInputType.text,
          label: 'Search',
          prefixIcon: Icons.search,
        ),
      ],
    );
  }
}
