import 'package:flutter/material.dart';
import 'package:gamezone/adapters/ui/widgets/my_button.dart';
import 'package:gamezone/adapters/ui/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.gamepad_rounded,
                size: 100.0,
                color: Theme.of(context).colorScheme.secondary,
              ),
              const SizedBox(height: 20,),
              Text("Game_zone",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 40,
                color: Theme.of(context).colorScheme.secondary,
              )),
             const SizedBox(height:25),
              MyTextField(controller: emailController, hintText: "Email", obscureText: false),
              const SizedBox(height: 20,),
              MyTextField(controller: passwordController, hintText: "Password", obscureText: true),
              const SizedBox(height: 25,),
              MyButton(text: "Sign In", onTap: () {}),
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  
                },
                child: Text(
                  "Register Now",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 30,
                  ),
                  ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
