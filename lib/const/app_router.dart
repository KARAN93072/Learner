import 'package:go_router/go_router.dart';
import 'package:learner/screens/count_1/count_example.dart';
import 'package:learner/screens/home/home_screen.dart';
import 'package:learner/screens/slider/slider_screen.dart';

class AppRouter {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
        path: '/',
        name: HomeScreen.id,
        builder: (context, index) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'CountExample',
            name: CountExample.id,
            builder: (context, state) => const CountExample(),
          ),
          GoRoute(
              path: 'SliderScreen',
              name: SliderScreen.id,
              builder: (context, state) => const SliderScreen())
        ]),
  ]);
}
