import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:learner/screens/count_1/count_example.dart';
import 'package:learner/screens/fevorite/favorite_screen.dart';
import 'package:learner/screens/slider/slider_screen.dart';
import 'package:learner/screens/theme_changer/dark_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Column(
            //   children: [
            //     RadioListTile<ThemeMode>(
            //         title: const Text('Light Mode'),
            //         value: ThemeMode.light,
            //         groupValue: themeChanger.themeMode,
            //         onChanged: themeChanger.setTheme),
            //     RadioListTile<ThemeMode>(
            //         title: const Text('Dark Mode'),
            //         value: ThemeMode.dark,
            //         groupValue: themeChanger.themeMode,
            //         onChanged: themeChanger.setTheme)
            //   ],
            // ),

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
          ],
        ),
      ),
    );
  }
}
