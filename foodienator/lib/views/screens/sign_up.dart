import 'package:flutter/material.dart';
import 'package:foodienator/views/widgets/iconic_text_field.dart';

import '../widgets/button_one.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2DB6A3),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/images/login_illustration.png',
                width: 325,
              ),
              const SizedBox(
                height: 40,
              ),
              const IconicTextField(
                labelText: 'Email',
                prefixIcon: Icons.email,
                type: FieldType.email,
              ),
              const SizedBox(
                height: 20,
              ),
              const IconicTextField(
                labelText: 'Username',
                prefixIcon: Icons.person,
                type: FieldType.text,
              ),
              const SizedBox(
                height: 20,
              ),
              const IconicTextField(
                labelText: 'Password',
                prefixIcon: Icons.lock,
                type: FieldType.password,
              ),
              const SizedBox(
                height: 40,
              ),
              ButtonOne(
                text: 'Register',
                onButtonPressed: () {
                  Navigator.pushNamed(context, '/registrationComplete');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
