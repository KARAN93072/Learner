import 'package:flutter/material.dart';
import 'package:learner/const/app_router.dart';
import 'package:learner/screens/count_1/count_provider.dart';
import 'package:learner/screens/fevorite/favorite_provider.dart';
import 'package:learner/screens/slider/slider_provider.dart';
import 'package:learner/screens/theme_changer/theme_changer_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => SliderProvider()),
          ChangeNotifierProvider(create: (_) => FavoriteProvider()),
          ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
        ],
        child: Builder(builder: (context) {
          final themeDataProvider = Provider.of<ThemeChangerProvider>(context);
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            themeMode: themeDataProvider.themeMode,
            darkTheme: ThemeData(brightness: Brightness.dark),
            theme: ThemeData(primarySwatch: Colors.blueGrey),
            routerConfig: AppRouter.router,
          );
        }));
  }
}
