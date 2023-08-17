import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientAppBar(
      titleSpacing: 0,
      centerTitle: false,
      gradient: const LinearGradient(
        colors: [
          Color.fromRGBO(19, 19, 19, 1),
          Color.fromRGBO(19, 19, 19, 0.98),
          Color.fromRGBO(19, 19, 19, 0.90),
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
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: const CircleAvatar(
              radius: 23,
              backgroundColor: Color.fromRGBO(16, 197, 0, 1),
              child: Text(
                "K",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
