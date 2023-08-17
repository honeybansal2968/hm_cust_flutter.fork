import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/getx/controllerCall.dart';
import 'package:hm_cust_flutter/screens/profile_module/pages/user_profile.dart';
import 'package:hm_cust_flutter/screens/signin/signin.dart';
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
          home: SignInScreen(),
        ));
  }
}
