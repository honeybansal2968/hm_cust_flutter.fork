import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hm_cust_flutter/ui_utils/app_colors.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(
          Icons.menu_open_rounded,
          color: AppColors.primaryColor,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 4),
          child: Stack(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/notification");
                  },
                  icon: const Icon(
                    Icons.notifications,
                    size: 24,
                    color: AppColors.fadedColor,
                  )),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 0, 0),
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 13,
                    minHeight: 13,
                  ),
                  child: const Text(
                    "2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Current Location",
            style:
                GoogleFonts.getFont("Nunito", fontSize: 13, color: Colors.grey),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on_rounded,
                size: 16,
                color: Color.fromARGB(255, 38, 207, 44),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "Rani Bagh, Delhi",
                style: GoogleFonts.getFont("Nunito",
                    color: AppColors.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
