import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/screens/home/home.dart';
import 'package:hm_cust_flutter/screens/signin/signin.dart';


class AppDrawer extends StatelessWidget {
  final List<String> sections = [
    'Home',
    'Profile',
    'Payments',
    'Add to cart',
    'HM store',
    'Privacy Policy',
    'Licences',
    'Help and support',
    'About us',
    "Sign out"
  ];


  AppDrawer({super.key});

  void navigateTo(int index) {
    switch (index) {
      case 0:
        // Navigate logic for Home Screen

        Get.to(const MyHomePage());
        break;
      case 1:
        // Navigate logic for Profile

        break;
      case 2:
        // Navigate logic for Orders Booking
        break;
      case 3:
        // Navigate logic for Schedule Service
        break;
      case 4:
        // Navigate logic for Payments
        break;
      case 11:
        // Navigate logic for SignOut
        Get.offAll(const SignInScreen());
        break;
      // Add more cases for other sections
      default:
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
            color: Colors.red.shade300,
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
                  'user@example.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
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
                    navigateTo(index);
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.red.shade100,
                  thickness: 1.5,
                  height: 0,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
