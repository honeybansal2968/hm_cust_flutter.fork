import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/screens/home/home_screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => null,),

    ],
    child: GetMaterialApp(
        theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
    useMaterial3: true,
    ),
    home: MyHomePage(),
    )
    );
  }
}


