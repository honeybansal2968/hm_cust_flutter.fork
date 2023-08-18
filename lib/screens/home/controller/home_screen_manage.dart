import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/screens/chat_module/pages/chat_page.dart';
import 'package:hm_cust_flutter/screens/home/pages/home_screen.dart';
import 'package:hm_cust_flutter/screens/profile_module/pages/user_profile.dart';
import 'package:hm_cust_flutter/screens/userOrders/pages/user_orders.dart';

class NavigationController extends GetxController {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const ChatPage(),
    const UserOrders(),
    const UserProfile(),
  ];

  Widget get currentPage => pages[currentIndex];

  void changePage(int index) {
    currentIndex = index;
    update();
  }
}
