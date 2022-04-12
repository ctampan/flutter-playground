import 'package:beepy/views/screens/car_cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/change_theme_provider.dart';
import '../widgets/app_bar.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  static const routeName = '/';
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.read(changeTheme).darkMode;
    final theme = Theme.of(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarWidget(context, title),
      backgroundColor: theme.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/Beep_Beep_Drifting.png"),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "Find Your Vehicle",
                style: theme.textTheme.headline4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 50),
              child: Text(
                "Find the perfect vehicle for every occasion!",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyText1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CupertinoSwitch(
                  value: isDarkMode,
                  activeColor: const Color(0xFFFA7F35),
                  onChanged: (v) {
                    if (isDarkMode) {
                      ref.read(changeTheme.notifier).enableLightMode();
                    } else {
                      ref.read(changeTheme.notifier).enableDarkMode();
                    }
                  }),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 25),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: theme.primaryColor,
                      ),
                      onPressed: () =>
                          Navigator.pushNamed(context, CarCardsPage.routeName),
                      child: Text(
                        'Continue',
                        style: theme.textTheme.button,
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
