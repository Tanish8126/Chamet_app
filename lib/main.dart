import 'package:chingari/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

import 'utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: kWhite, centerTitle: true, elevation: 0),
        primarySwatch: Colors.grey,
      ),
      home: const SplashScreen(),
    );
  }
}
