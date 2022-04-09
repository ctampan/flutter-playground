import 'package:flutter/material.dart';

import '../widgets/button_one.dart';

class RegistrationCompleteScreen extends StatelessWidget {
  const RegistrationCompleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/registration_complete_illustration.png',
                width: 275,
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                  width: 200,
                  child: Text(
                    'Registration Complete',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        height: 1.25,
                        color: Color(0xFF464444)),
                  )),
              const SizedBox(
                height: 50,
              ),
              ButtonOne(
                text: 'Continue',
                onButtonPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
              )
            ],
          ),
        ));
  }
}
