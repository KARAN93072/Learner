import 'package:flutter/material.dart';
import 'package:learner/const/spacing.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static String id = "SignUpScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: Spacing.screenPadding,
        child: Column(
          children: [
            TextFormField(
              decoration:  InputDecoration(),
            ),TextFormField(
              decoration:  InputDecoration(),
            ),TextFormField(
              decoration:  InputDecoration(),
            ),
          ],
        ),
      ),
    );
  }
}
