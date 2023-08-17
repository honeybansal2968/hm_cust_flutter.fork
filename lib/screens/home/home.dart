import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/screens/home/controller/home_screen_manage.dart';
import 'package:hm_cust_flutter/utils/utils.dart';
import 'package:hm_cust_flutter/widgets/common/drawer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
        appBar: CommonAppBar(), body: GetBuilder<NavigationController>(
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
              selectedItemColor: Colors.red.shade500,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    label: "Home",
                    icon: Image.asset('assets/images/home-page.png',
                        fit: BoxFit.cover, height: 35, width: 40)),
                BottomNavigationBarItem(
                    label: "TAB 2",
                    icon: Image.asset('assets/icons/Car inspectors.png',
                        fit: BoxFit.fill, height: 35, width: 40)),
                BottomNavigationBarItem(
                    label: "TAB 3",
                    icon: Image.asset('assets/icons/Detailing.png',
                        fit: BoxFit.fill, height: 35, width: 40)),
                const BottomNavigationBarItem(
                    label: "TAB 4", icon: Icon(Icons.account_box_rounded)),
                const BottomNavigationBarItem(
                    label: "Orders", icon: Icon(Icons.shopping_cart)),
              ],
            );
          },
        ));
  }
}
