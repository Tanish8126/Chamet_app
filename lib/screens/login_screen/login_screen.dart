import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants.dart';
import '../verification_screen/verification_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 720,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(255, 57, 8, 234), Color(0xff82c3df)],
              begin: FractionalOffset(0, 0),
              end: FractionalOffset(1.0, 0),
              tileMode: TileMode.clamp)),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 150,
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
                const SizedBox(
                  height: 200,
                ),
                SizedBox(
                  height: 50,
                  width: 250,
                  child: TextButton.icon(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Colors.red,
                        foregroundColor: kWhite),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const VerificationScreen()));
                    },
                    icon: SvgPicture.asset("assets/icons/google-svg.svg"),
                    label: const Text("Google"),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 250,
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const VerificationScreen()));
                    },
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Colors.purpleAccent,
                        foregroundColor: kWhite),
                    icon: SvgPicture.asset("assets/icons/Phone.svg"),
                    label: const Text("Phone"),
                  ),
                ),
                const Text("Agree to User Agreement and Privacy Policy"),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
