import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/screens/home/pages/home_screen.dart';
import 'package:hm_cust_flutter/screens/userOrders/pages/user_orders.dart';

class NavigationController extends GetxController {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const UserOrders()
  ];

  Widget get currentPage => pages[currentIndex];

  void changePage(int index) {
    currentIndex = index;
    update();
  }
}
