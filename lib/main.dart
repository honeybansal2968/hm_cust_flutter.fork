import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/getx/controllerCall.dart';
import 'package:hm_cust_flutter/screens/add_to_cart_module/pages/add_to_cart_page.dart';
import 'package:hm_cust_flutter/screens/chat_module/pages/chat_page.dart';
import 'package:hm_cust_flutter/screens/home/home.dart';
import 'package:hm_cust_flutter/screens/home/pages/home_screen.dart';
import 'package:hm_cust_flutter/screens/profile_module/pages/user_profile.dart';
import 'package:hm_cust_flutter/screens/signin/pages/signin.dart';
import 'package:hm_cust_flutter/temp.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  ControllerInitialization controllerInitialization =
      Get.put(ControllerInitialization());
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => null,
          ),
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
            useMaterial3: true,
          ),
          home: const SignInScreen(),
        ));
  }
}
