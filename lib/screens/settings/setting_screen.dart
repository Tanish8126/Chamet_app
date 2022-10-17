// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Arc(
              edge: Edge.BOTTOM,
              arcType: ArcType.CONVEX,
              height: 20,
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                      Color.fromARGB(255, 251, 250, 253),
                      Color(0xff82c3df)
                    ],
                        begin: FractionalOffset(0, 0),
                        end: FractionalOffset(1.0, 0),
                        tileMode: TileMode.clamp)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.travel_explore),
                        Text(
                          'Rahul Gupta',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 20,
                          width: 50,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 63, 144, 242)
                                  .withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              'India',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12),
                            ),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 50,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 63, 144, 242)
                                  .withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              'English',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '0\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18),
                              ),
                              TextSpan(
                                text: 'Friends',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '0\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18),
                              ),
                              TextSpan(
                                text: 'Following',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '0\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18),
                              ),
                              TextSpan(
                                text: 'Followers',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            buildAccountOptionRow(context, "Messages"),
            buildAccountOptionRow(context, "My Level"),
            buildAccountOptionRow(context, "My Balance"),
            buildAccountOptionRow(context, "My Tasks"),
            buildAccountOptionRow(context, "My Cards"),
            buildAccountOptionRow(context, "My Profile"),
            buildAccountOptionRow(context, "My Earnings"),
            buildAccountOptionRow(context, "My Chat Price"),
            buildAccountOptionRow(context, "Settings")
          ],
        ),
      ),
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.normal, color: kBlack),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: kPrimaryLightColor,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
