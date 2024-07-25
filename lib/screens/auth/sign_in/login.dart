import 'package:flutter/material.dart';
import 'package:learner/const/spacing.dart';
import 'package:learner/screens/auth/sign_in/login_provider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  static String id = "LoginScreen";
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    return Scaffold(
      body: Container(
        padding: Spacing.screenPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Email : eve.holt@reqres.in"),
            const Text("Password : cityslicka"),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(hintText: "Email"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passController,
              decoration: const InputDecoration(hintText: "Password"),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                loginProvider.setLogin(emailController.text.toString(),
                    passController.text.toString());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: loginProvider.isLoading
                        ? CircularProgressIndicator()
                        : Text('Login')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
