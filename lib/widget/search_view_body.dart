import 'package:flutter/material.dart';
import 'package:weather_app/widget/custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  SearchViewBody({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
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
              onchange: (value){},
              border: OutlineInputBorder(),
              type: TextInputType.text,
              label: 'Search',
              prefixIcon: Icons.search,
            ),
          ),
        ),
        Spacer(flex: 3),
      ],
    );
  }
}
