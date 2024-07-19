import 'package:go_router/go_router.dart';
import 'package:learner/screens/count_1/count_example.dart';
import 'package:learner/screens/fevorite/favorite_screen.dart';
import 'package:learner/screens/fevorite/saved_favorite_users.dart';
import 'package:learner/screens/home/home_screen.dart';
import 'package:learner/screens/slider/slider_screen.dart';
import 'package:learner/screens/theme_changer/dark_theme.dart';
import 'package:learner/screens/value_notify_listener/value_notify_listener.dart';

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
              builder: (context, state) => const SliderScreen()),
          GoRoute(
              path: 'FavoriteScreen',
              name: FavoriteScreen.id,
              builder: (context, state) => const FavoriteScreen(),
              routes: [
                GoRoute(
                  path: 'SavedFavoriteUsers',
                  name: SavedFavoriteUsers.id,
                  builder: (context, state) => const SavedFavoriteUsers(),
                ),
              ]),
          GoRoute(
              path: 'DarkThemeScreen',
              name: DarkThemeScreen.id,
              builder: (context, state) => const DarkThemeScreen()),
              GoRoute(path: 'ValueNotifyListener',
              name: ValueNotifyListener.id,
              builder: (context, state)=> const ValueNotifyListener())
        ]),
  ]);
}
