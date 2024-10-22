import 'package:go_router/go_router.dart';
import 'package:weather/home/presentation/views/search_view.dart';
import 'package:weather/home/presentation/views/widgets/no_weather_info.dart';

abstract class AppRouter {
  static const kSearch = '/search';

  static final router = GoRouter(
    routes: [

      GoRoute(
        path: '/',
        builder: (context, state) => const NoWeatherInfo(),
      ),
      GoRoute(
        path: kSearch,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
