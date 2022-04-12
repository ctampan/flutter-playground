import 'package:beepy/views/providers/change_theme_provider.dart';
import 'package:beepy/views/screens/car_detail.dart';
import 'package:beepy/views/screens/home.dart';
import 'package:beepy/views/utilities/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
      const ProviderScope(child: MyApp())
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(changeTheme);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beepy',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: currentTheme.darkMode ? ThemeMode.dark : ThemeMode.light,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const HomePage(title: 'Beepy'),
        '/carDetail': (context) => const CarDetailPage(title: 'Cars'),
      },
    );
  }
}
