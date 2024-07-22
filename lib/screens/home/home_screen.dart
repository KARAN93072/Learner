import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learner/screens/auth/sign_in/login.dart';
import 'package:learner/screens/count_1/count_example.dart';
import 'package:learner/screens/fevorite/favorite_screen.dart';
import 'package:learner/screens/slider/slider_screen.dart';
import 'package:learner/screens/theme_changer/dark_theme.dart';
import 'package:learner/screens/theme_changer/theme_changer_provider.dart';
import 'package:learner/screens/value_notify_listener/value_notify_listener.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        actions: [
          Consumer<ThemeChangerProvider>(
              builder: (context, value, child) => Switch(
                  activeColor: const Color.fromARGB(255, 53, 63, 67),
                  activeTrackColor: const Color.fromARGB(255, 30, 34, 34),
                  value: value.themeState,
                  onChanged: (newValue) {
                    if (value.themeState = newValue) {
                      value.setTheme(ThemeMode.dark);
                    } else {
                      value.setTheme(ThemeMode.light);
                    }
                  }))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilledButton(
                onPressed: () {
                  GoRouter.of(context).goNamed(CountExample.id);
                },
                child: const Text('CountExample')),
            FilledButton(
                onPressed: () {
                  GoRouter.of(context).goNamed(SliderScreen.id);
                },
                child: const Text('Slider Screen')),
            FilledButton(
                onPressed: () {
                  GoRouter.of(context).goNamed(FavoriteScreen.id);
                },
                child: const Text('Fevorite Screen')),
            FilledButton(
                onPressed: () {
                  GoRouter.of(context).goNamed(DarkThemeScreen.id);
                },
                child: const Text('DarkTheme Screen')),
            FilledButton(
                onPressed: () {
                  GoRouter.of(context).goNamed(ValueNotifyListener.id);
                },
                child: const Text('STL Widget as STF Widget Use')),
            FilledButton(
                onPressed: () {
                  GoRouter.of(context).goNamed(LoginScreen.id);
                },
                child: const Text('Login Screen'))
          ],
        ),
      ),
    );
  }
}
