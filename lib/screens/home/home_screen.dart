import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants.dart';
import '../../utils/custtom_bottom_nav_bar.dart';
import '../../utils/enums.dart';
import '../../utils/size_config.dart';
import '../settings/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (() {}),
                    child: const Text(
                      "Nearby",
                      style: TextStyle(color: kBlack, fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: (() {}),
                    child: const Text(
                      "Discover",
                      style: TextStyle(color: kBlack, fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: (() {}),
                    child: const Text(
                      "Popular",
                      style: TextStyle(color: kBlack, fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: (() {}),
                    child: const Text(
                      "New",
                      style: TextStyle(color: kBlack, fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: (() {}),
                child: SvgPicture.asset(
                  "assets/icons/filter-svgrepo-com.svg",
                  height: getProportionateScreenWidth(18),
                  color: kBlack,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: (() {}),
                child: SvgPicture.asset(
                  "assets/icons/bar-chart-svgrepo-com.svg",
                  height: getProportionateScreenWidth(25),
                  color: kBlack,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 575,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 229, 193, 236),
                        spreadRadius: 5,
                      )
                    ],
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/girl.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 50),
                    child: Stack(
                      children: [
                        Positioned(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Container(
                                  height: 20,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                              255, 225, 235, 247)
                                          .withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(child: Text('Live'))),
                              Container(
                                height: 100,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.amber),
                              )
                            ])),
                        Positioned(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "The Free Soul",
                                    style:
                                        TextStyle(color: kWhite, fontSize: 25),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "India ",
                                        style: TextStyle(
                                            color: kWhite, fontSize: 15),
                                      ),
                                      Text(
                                        "| English",
                                        style: TextStyle(
                                            color: kWhite, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: (() {}),
                                child: SvgPicture.asset(
                                  "assets/icons/call-svgrepo-com.svg",
                                  height: getProportionateScreenWidth(60),
                                  color: Colors.purpleAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 55,
                  width: 200,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: ((context) => const SettingScreen())));
                    },
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Colors.purpleAccent,
                        foregroundColor: kWhite),
                    child: const Text("Random Match"),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar:
            const CustomBottomNavBar(selectedMenu: MenuState.home),
      ),
    );
  }
}
