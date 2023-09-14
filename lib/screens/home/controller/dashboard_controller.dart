import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  // scroll controller of dashboard
  ScrollController scrollController = ScrollController();
  void handleScroll(ScrollNotification notification, double screenHeight) {
    if (notification is ScrollUpdateNotification) {
      if (notification.metrics.pixels > screenHeight / 4 && isVisible) {
        isVisible = false;
      } else if (notification.metrics.pixels <= screenHeight / 4 &&
          !isVisible) {
        isVisible = true;
      }
    }
    update();
  }

  // visibility of floating action button
  bool isVisible = false;
  updateIsVisible() {
    isVisible = !isVisible;
    update();
  }
}
