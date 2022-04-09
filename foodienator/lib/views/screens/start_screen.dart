import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/images/start_screen.png',
                width: 325,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Foodienator',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  fontSize: 33,
                  color: Colors.white),
            ),
            const SizedBox(height: 10),
            const SizedBox(
                width: 150,
                child: Text(
                  'Oder your favorite Meals Here!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Colors.white),
                )),
            const Spacer(),
            Container(
                margin: const EdgeInsets.only(bottom: 100),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SizedBox(
                      height: 60,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              fontFamily: 'Outfit',
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  topRight: Radius.zero,
                                  bottomRight: Radius.zero)),
                          primary: const Color(0xFF2DB6A3),
                          onPrimary: Colors.white,
                        ),
                      )),
                  SizedBox(
                      height: 60,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/signUp'),
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              fontFamily: 'Outfit',
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                    topLeft: Radius.zero,
                                    bottomLeft: Radius.zero)),
                            primary: Colors.white,
                            onPrimary: Colors.black),
                      ))
                ]))
          ],
        ),
      ),
    );
  }
}
