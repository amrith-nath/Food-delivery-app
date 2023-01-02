import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_test_ui/core/colors/colors.dart';
import 'package:food_test_ui/core/keys/keys.dart';
import 'package:food_test_ui/screens/home/screen_home.dart';
import 'package:food_test_ui/screens/splash/screen_splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: kWhite,
      systemNavigationBarColor: kWhite,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kRed,
        primarySwatch: kMaterialred,
        appBarTheme: const AppBarTheme(
          backgroundColor: kWhite,
        ),
      ),
      navigatorKey: navigatorKey,
      routes: {'/home': (context) => const ScreenHome()},
      home: const ScreenSplash(),
    );
  }
}
