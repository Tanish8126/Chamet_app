import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../loginform_screen/loginform_screen.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

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
        appBar: AppBar(
          leading: const BackButton(color: kWhite),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                "Hello",
                style: TextStyle(color: kWhite, fontSize: 50),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                maxLength: 10,
                style: const TextStyle(color: kWhite),
                autofocus: true,
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  prefixStyle: const TextStyle(color: kWhite),
                  hintStyle: const TextStyle(color: kWhite),
                  prefix: const Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      '+91',
                      style: TextStyle(color: kWhite),
                    ),
                  ),
                  filled: true,
                  fillColor:
                      const Color.fromARGB(255, 232, 104, 255).withOpacity(0.5),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.transparent)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => const LoginForm())));
                  },
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.purpleAccent,
                      foregroundColor: kWhite),
                  child: const Text("Next"),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
