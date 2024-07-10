import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});
  static String id = 'ErrorScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Something went wrong...'),
      ),
    );
  }
}
