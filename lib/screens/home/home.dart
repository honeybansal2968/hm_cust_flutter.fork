import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/screens/home/controller/dashboard_controller.dart';
import 'package:hm_cust_flutter/screens/home/controller/home_screen_manage.dart';
import 'package:hm_cust_flutter/screens/home/pages/components/sos_bottom_sheet.dart';
import 'package:hm_cust_flutter/themes/colors.dart';
import 'package:hm_cust_flutter/utils/utils.dart';
import 'package:hm_cust_flutter/widgets/common/drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    animation = Tween<double>(begin: 1, end: 0).animate(curvedAnimation);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBody: true,
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      drawer: AppDrawer(),
      appBar: const CommonAppBar(),
      body: GetBuilder<NavigationController>(
        init: NavigationController(),
        builder: (controller) {
          return controller.currentPage;
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GetBuilder<DashboardController>(
          init: DashboardController(),
          builder: (dashboardController) {
            return FloatingActionButton(
              onPressed: () {
                SosBottomSheet.sosBottomSheet(context);
              },
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.sos,
                color: Colors.black,
              ),
            );
          }),
      bottomNavigationBar: GetBuilder<NavigationController>(
        init: NavigationController(),
        builder: (controller) {
          return BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 6.0,
            padding: const EdgeInsets.only(top: 5),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => controller.changePage(0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        CupertinoIcons.home,
                        color: controller.currentIndex == 0
                            ? kPrimaryColor
                            : inactiveColor,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 12,
                          color: controller.currentIndex == 0
                              ? kPrimaryColor
                              : inactiveColor,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => controller.changePage(1),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        CupertinoIcons.chat_bubble_text_fill,
                        color: controller.currentIndex == 1
                            ? kPrimaryColor
                            : inactiveColor,
                      ),
                      Text(
                        'Chat',
                        style: TextStyle(
                          fontSize: 12,
                          color: controller.currentIndex == 1
                              ? kPrimaryColor
                              : inactiveColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                InkWell(
                  onTap: () => controller.changePage(2),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/icons/Detailing.png',
                        fit: BoxFit.fill,
                        height: 25,
                        width: 28,
                        color: controller.currentIndex == 2
                            ? kPrimaryColor
                            : inactiveColor,
                      ),
                      Text(
                        'Orders',
                        style: TextStyle(
                          fontSize: 12,
                          color: controller.currentIndex == 2
                              ? kPrimaryColor
                              : inactiveColor,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => controller.changePage(3),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        CupertinoIcons.profile_circled,
                        color: controller.currentIndex == 3
                            ? kPrimaryColor
                            : inactiveColor,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 12,
                          color: controller.currentIndex == 3
                              ? kPrimaryColor
                              : inactiveColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
