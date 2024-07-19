import 'package:flutter/material.dart';
import 'package:learner/screens/theme_changer/theme_changer_provider.dart';
import 'package:provider/provider.dart';

class DarkThemeScreen extends StatelessWidget {
  const DarkThemeScreen({super.key});
  static String id = 'DarkThemeScreen';

  @override
  Widget build(BuildContext context) {
    final themeChangerProvider = Provider.of<ThemeChangerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme'),
      ),
      body: Center(
        child: Consumer<ThemeChangerProvider>(
          builder: (context, value, child) => Switch(
            activeColor: const Color.fromARGB(255, 53, 63, 67),
            activeTrackColor: const Color.fromARGB(255, 30, 34, 34),
            value: themeChangerProvider.themeState,
            onChanged: (newValue) {
              if (value.themeState = newValue) {
                value.setTheme(ThemeMode.dark);
              } else {
                value.setTheme(ThemeMode.light);
              }
            },
          ),
        ),
      ),
    );
  }
}
