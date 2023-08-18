import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/screens/home/controller/home_screen_manage.dart';
import 'package:hm_cust_flutter/screens/privacy_policy_module/pages/privacy_policy_page.dart';
import 'package:hm_cust_flutter/screens/signin/signin.dart';
import 'package:hm_cust_flutter/themes/colors.dart';

NavigationController navigationController = Get.put(NavigationController());

class AppDrawer extends StatelessWidget {
  final List<String> sections = [
    'Home',
    'Payments',
    'Add to cart',
    'HM store',
    "Settings",
    'Privacy Policy',
    'Licences',
    'Help and support',
    'About us',
    "Sign out"
  ];

  AppDrawer({super.key});

  void navigateTo(int index, context) {
    switch (index) {
      case 0:
        // Navigate logic for Home Screen

        Navigator.pop(context);
        navigationController.changePage(0);
        break;
      case 1:
        // Navigate logic for Payments Screen
        Navigator.pop(context);
        break;
      case 2:

        // Navigate logic for Add to cart Screen
        Navigator.pop(context);
        break;

      case 3:
        // Navigate logic for HM store Screen
        Navigator.pop(context);
        break;
      case 4:
        // Navigate logic for Settings Screen
        Navigator.pop(context);
        break;
      case 5:
        // Navigate logic for Privacy Policy Screen
        Navigator.pop(context);
        Get.to(const PrivacyPolicy());
        break;
      case 6:
        // Navigate logic for Licences Screen
        Navigator.pop(context);
        break;
      case 7:
        // Navigate logic for Help and support Screen
        Navigator.pop(context);
        break;
      case 8:
        // Navigate logic for About us Screen
        Navigator.pop(context);
        break;
      case 9:
        // Navigate logic for Sign out Screen
        Navigator.pop(context);
        Get.offAll(const SignInScreen());
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 50, left: 20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  kPrimaryColor,
                  kSecondaryColor,
                  // Color.fromRGBO(3, 147, 204, 0.898),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            width: double.infinity,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=800'),
                ),
                SizedBox(height: 10),
                Text(
                  'Edwin Smith',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: sections.length,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  title: Text(
                    sections[index],
                    style: const TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                    // Navigator.pop(context);
                    // controller.currentIndex.value = index;
                    navigateTo(index, context);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
