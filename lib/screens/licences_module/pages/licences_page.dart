import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LicencesPage extends StatelessWidget {
  const LicencesPage({super.key});

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
        title: const Text('License Information'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Open Source Licenses',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            LicenseItem(
              libraryName: 'Flutter Framework',
              licenseText: 'MIT License',
            ),
            LicenseItem(
              libraryName: 'GetX State Management',
              licenseText: 'MIT License',
            ),
            LicenseItem(
              libraryName: 'http Package',
              licenseText: 'MIT License',
            ),
            SizedBox(height: 24),
            Text(
              'Third-Party Libraries',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            LicenseItem(
              libraryName: 'Font Awesome Icons',
              licenseText: 'CC BY 4.0 License',
            ),
            LicenseItem(
              libraryName: 'Google Fonts',
              licenseText: 'Open Font License',
            ),
          ],
        ),
      ),
    );
  }
}

class LicenseItem extends StatelessWidget {
  final String libraryName;
  final String licenseText;

  const LicenseItem(
      {super.key, required this.libraryName, required this.licenseText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(libraryName, style: const TextStyle(fontSize: 18)),
      subtitle: Text(licenseText, style: const TextStyle(fontSize: 16)),
    );
  }
}
