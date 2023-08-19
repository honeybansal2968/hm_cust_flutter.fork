import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

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
        title: const Text('About Us'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
            
              alignment: Alignment.center,
              child:
                  const Image(image: AssetImage("assets/images/main-logo.png",),  width: 100,
              height: 100,),
            ),
            const SizedBox(height: 16),
            const Text(
              'Welcome to Car Service App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'At Car Service App, we are committed to providing high-quality car maintenance and repair services to our customers. With years of experience and a dedicated team of professionals, we strive to ensure that your vehicle receives the best care it deserves.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            const Text(
              'Our Mission',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Our mission is to deliver exceptional car services while maintaining the highest standards of customer satisfaction. We aim to make car maintenance convenient and hassle-free for car owners.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            const Text(
              'Contact Us',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'For inquiries and support, feel free to reach out to us:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              'Email: info@carserviceapp.com',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              'Phone: +123-456-7890',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
