import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:learner/screens/count_1/count_example.dart';
import 'package:learner/screens/slider/slider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilledButton(
                onPressed: () {
                  GoRouter.of(context).goNamed(CountExample.id);
                },
                child: Text('CountExample')),
            FilledButton(
                onPressed: () {
                  GoRouter.of(context).goNamed(SliderScreen.id);
                },
                child: Text('Slider Screen'))
          ],
        ),
      ),
    );
  }
}
