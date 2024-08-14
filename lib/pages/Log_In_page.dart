import 'package:flutter/material.dart';
import 'package:food_delivery/components/buttons.dart';
import 'package:food_delivery/components/text_field.dart';

import 'Home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function() onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
// login method
  void login(){
    // the authentication itself

    // navigate to home page
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.lock_open_rounded,
            size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            // massage , app login
            Text("Food Delivery App",
            style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            ),
            // email text-field
            const SizedBox(height: 25),
            MyTextField(controller: emailController, hintText: "Email", obscureText: false),
            //password text-field
            const SizedBox(height: 10),
            MyTextField(controller: passwordController, hintText: "Password", obscureText: true),
            // sing in button
            const SizedBox(height: 18),
             MyButton(text: "Log in",onTape: login,),
            //Not a member?,LOL
            const SizedBox(height: 25),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?",
                style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                ),
                // register that nigga
                const SizedBox(height: 5),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Register now",
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
