import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants.dart';
import '../../utils/size_config.dart';
import '../home/home_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              const Text(
                "Gender Selection",
                style: TextStyle(color: kWhite, fontSize: 30),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: const Color.fromARGB(255, 232, 104, 255)
                          .withOpacity(0.5),
                    ),
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/icons/male-svgrepo-com.svg",
                      height: getProportionateScreenWidth(18),
                      color: kWhite,
                    ),
                    label: const Text(
                      "Male",
                      style: TextStyle(color: kWhite),
                    ),
                  ),
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: const Color.fromARGB(255, 232, 104, 255)
                          .withOpacity(0.5),
                    ),
                    icon: SvgPicture.asset(
                      "assets/icons/female-svgrepo-com.svg",
                      height: getProportionateScreenWidth(18),
                      color: kWhite,
                    ),
                    onPressed: () {},
                    label: const Text(
                      "Female",
                      style: TextStyle(color: kWhite),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/alert-svgrepo-com.svg",
                    height: getProportionateScreenWidth(18),
                    color: kWhite,
                  ),
                  const Text(
                    "You can't change after confirmation",
                    style: TextStyle(color: kWhite),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: const Color.fromARGB(255, 232, 104, 255)
                        .withOpacity(0.5),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Select the date of birth",
                    style: TextStyle(color: kWhite),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/alert-svgrepo-com.svg",
                    height: getProportionateScreenWidth(18),
                    color: kWhite,
                  ),
                  const Text(
                    "Not allowed to use under 18",
                    style: TextStyle(color: kWhite),
                  ),
                ],
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
                        builder: ((context) => const HomeScreen())));
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
