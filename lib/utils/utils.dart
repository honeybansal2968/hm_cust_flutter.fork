import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientAppBar(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: const BorderSide(
              color: Color.fromARGB(0, 240, 10, 10), width: 1)),
      titleSpacing: 0,
      centerTitle: false,
      gradient: const LinearGradient(
        colors: [
          Color.fromRGBO(0, 65, 245, 1),
          Color.fromRGBO(0, 111, 238, 0.973),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      title: const Row(
        children: [
          SizedBox(
              height: 45,
              width: 40,
              child: Image(image: AssetImage("assets/images/main-logo.png"))),
          SizedBox(
            width: 12,
          ),
          Text(
            "Helpy Moto",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ],
      ),
     
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
