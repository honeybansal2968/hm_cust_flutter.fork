import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/screens/home/controller/home_screen_manage.dart';
import 'package:hm_cust_flutter/themes/colors.dart';
import 'package:hm_cust_flutter/ui_utils/app_colors.dart';
import 'package:hm_cust_flutter/utils/utils.dart';
import 'package:hm_cust_flutter/widgets/common/drawer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
        drawer: AppDrawer(),
        appBar: const CommonAppBar(),
        body: GetBuilder<NavigationController>(
          init: NavigationController(),
          builder: (controller) {
            return controller.currentPage;
          },
        ),
        bottomSheet: GetBuilder<NavigationController>(
          init: NavigationController(),
          builder: (controller) {
            return BottomNavigationBar(
              selectedIconTheme: const IconThemeData(color: Colors.teal),
              backgroundColor: Colors.green.shade50,
              currentIndex: controller.currentIndex,
              onTap: (value) {
                controller.changePage(value);
              },
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              selectedItemColor: kPrimaryColor,
              type: BottomNavigationBarType.fixed,
              items: [
                const BottomNavigationBarItem(
                  label: "Home",
                  activeIcon: Icon(CupertinoIcons.home, color: kPrimaryColor),
                  icon: Icon(
                    CupertinoIcons.home,
                    color: inactiveColor,
                  ),
                ),
                const BottomNavigationBarItem(
                    label: "Chat",
                    activeIcon: Icon(
                      CupertinoIcons.chat_bubble_text_fill,
                      color: kPrimaryColor,
                    ),
                    icon: Icon(
                      CupertinoIcons.chat_bubble_text_fill,
                      color: inactiveColor,
                    )),
                BottomNavigationBarItem(
                    label: "Orders",
                    activeIcon: Image.asset(
                      'assets/icons/Detailing.png',
                      fit: BoxFit.fill,
                      height: 30,
                      width: 35,
                      color: kPrimaryColor,
                    ),
                    icon: Image.asset(
                      'assets/icons/Detailing.png',
                      fit: BoxFit.fill,
                      height: 30,
                      width: 30,
                      color: inactiveColor,
                    )),
                const BottomNavigationBarItem(
                    label: "Profile",
                    activeIcon: Icon(CupertinoIcons.profile_circled,
                        color: kPrimaryColor),
                    icon: Icon(CupertinoIcons.profile_circled,
                        color: inactiveColor)),
              ],
            );
          },
        ));
  }
}
