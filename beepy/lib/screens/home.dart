import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/app-bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarWidget(context, title),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/Beep_Beep_Drifting.png"),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "Find Your Vehicle",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Text(
                "Find the perfect vehicle for every occasion!",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: Colors.orange,
                        onPrimary: Colors.white,
                      ),
                      onPressed: () =>
                          Navigator.pushNamed(context, '/carDetail'),
                      child: Text(
                        'Continue',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
