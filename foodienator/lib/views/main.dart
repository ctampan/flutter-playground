import 'package:flutter/material.dart';
import 'package:foodienator/views/screens/start_screen.dart';

import '../constants/foodienator_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodienator',
      theme: ThemeData(
          primarySwatch:
              const MaterialColor(0xFF22C7A9, FoodienatorColors.primary),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          })),
      initialRoute: '/startScreen',
      routes: <String, WidgetBuilder>{
        '/startScreen': (context) => StartScreen(),
      },
    );
  }
}
