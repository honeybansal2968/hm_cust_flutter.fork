import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/screens/signin/pages/signin.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            )),
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Settings',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text('Notification Preferences'),
              subtitle: const Text('Manage your notification settings'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Navigate to notification settings
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Language'),
              subtitle: const Text('Select your preferred language'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Navigate to language settings
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Privacy Policy'),
              subtitle: const Text('View our privacy policy'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Navigate to privacy policy
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Logout'),
              subtitle: const Text('Logout from your account'),
              trailing: const Icon(Icons.exit_to_app),
              onTap: () {
                // Perform logout action
                Navigator.pop(context);
                Get.offAll(const SignInScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
