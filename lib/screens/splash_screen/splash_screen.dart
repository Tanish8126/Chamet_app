import 'dart:async';
import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';
import '../login_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen())));
    return Container(
      width: double.infinity,
      height: 720,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(255, 57, 8, 234), Color(0xff82c3df)],
              begin: FractionalOffset(0, 0),
              end: FractionalOffset(1.0, 0),
              tileMode: TileMode.clamp)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              const Spacer(
                flex: 1,
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(
                  'assets/images/unnamed.png',
                ),
              ),
              const Text(
                "Chamet",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
