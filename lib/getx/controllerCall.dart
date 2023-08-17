/// this file will handle all the required controller first time initialization

import 'package:get/get.dart';
import 'package:hm_cust_flutter/getx/authControllers.dart';

class ControllerInitialization extends GetxController {
   static AuthController instance = Get.find();

  AuthController authController = Get.put(AuthController());
}
AuthController authController = Get.find<AuthController>();
