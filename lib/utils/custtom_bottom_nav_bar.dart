import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/home/home_screen.dart';
import '../screens/settings/setting_screen.dart';
import 'constants.dart';
import 'enums.dart';
import 'size_config.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = kPrimaryLightColor;
    return Container(
      padding: EdgeInsets.only(bottom: getProportionateScreenWidth(12)),
      alignment: Alignment.center,
      height: 40,
      decoration: const BoxDecoration(
        color: kWhite,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              padding: EdgeInsets.zero,
              icon: SvgPicture.asset(
                "assets/icons/video-svgrepo-com.svg",
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: ((context) => const HomeScreen())));
              }),
          IconButton(
              padding: EdgeInsets.zero,
              icon: SvgPicture.asset(
                "assets/icons/tv-svgrepo-com.svg",
                color: MenuState.message == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () {}),
          IconButton(
              padding: EdgeInsets.zero,
              icon: SvgPicture.asset(
                  "assets/icons/forward-circle-line-svgrepo-com.svg",
                  color: MenuState.bookings == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor),
              onPressed: () {}),
          IconButton(
              padding: EdgeInsets.zero,
              icon: SvgPicture.asset(
                "assets/icons/travel-around-the-world-world-svgrepo-com.svg",
                color: MenuState.profile == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () {}),
          IconButton(
              padding: EdgeInsets.zero,
              icon: SvgPicture.asset(
                "assets/icons/user-svgrepo-com.svg",
                color: MenuState.profile == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: ((context) => const SettingScreen())));
              }),
        ],
      ),
    );
  }
}
