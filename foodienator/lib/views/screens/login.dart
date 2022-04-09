import 'package:flutter/material.dart';
import 'package:foodienator/views/widgets/button_one.dart';
import 'package:foodienator/views/widgets/iconic_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColorDark,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Image.asset(
                        'assets/images/login_illustration.png',
                        width: 275,
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                    width: 300,
                    child: Text(
                      'Welcome Back',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Color(0xFF464444)),
                    )),
                const SizedBox(
                    width: 300,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                          color: Color(0xFF464444)),
                    )),
                const SizedBox(
                  height: 30,
                ),
                const IconicTextField(
                  labelText: 'Username, Email',
                  prefixIcon: Icons.person,
                  type: FieldType.text,
                  iconScaling: 0.8,
                  textScaling: 0.7,
                ),
                const SizedBox(
                  height: 20,
                ),
                const IconicTextField(
                  labelText: 'Password',
                  prefixIcon: Icons.lock,
                  type: FieldType.password,
                  iconScaling: 0.8,
                  textScaling: 0.7,
                ),
                SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/signUp');
                            },
                            child: const Text('Sign Up',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Colors.white))),
                        const InkWell(
                            child: Text('Forgot Password?',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Colors.black)))
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                ButtonOne(text: 'Login', onButtonPressed: () {})
              ],
            ),
          ),
        ));
  }
}
