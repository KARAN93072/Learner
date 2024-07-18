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
        child: Consumer<ThemeChangerProvider>(builder: (context, value, child)=>
           Switch(
            value: themeChangerProvider.themeState,
            onChanged: (newValue) {
              if (value.themeState = newValue) {
                value.setTheme(ThemeMode.dark);
              }else{
                value.setTheme(ThemeMode.light);
              }
            },
          ),
        ),
      ),
    );
  }
}
