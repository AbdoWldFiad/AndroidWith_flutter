import 'package:flutter/material.dart';

import '../components/buttons.dart';
import '../components/text_field.dart';
class RegisterPage extends StatefulWidget {
  final void Function() onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController ConfirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            Text("Registering Page",
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 25),
            MyTextField(controller: emailController, hintText: "Email", obscureText: false),
            const SizedBox(height: 10),
            MyTextField(controller: passwordController, hintText: "Password", obscureText: true),
            const SizedBox(height: 10),
            MyTextField(controller: ConfirmpasswordController, hintText: "Confirm password", obscureText: true),
            const SizedBox(height: 18),
            MyButton(text: "Sign up",onTape: (){},),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",
                  style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(height: 5),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Login now",
                    style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
