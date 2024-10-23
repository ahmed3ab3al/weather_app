import 'package:go_router/go_router.dart';
import 'package:weather/home/presentation/views/home_view.dart';
import 'package:weather/home/presentation/views/search_view.dart';

abstract class AppRouter {
  static const kSearch = '/search';

  static final router = GoRouter(
    routes: [

      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kSearch,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
