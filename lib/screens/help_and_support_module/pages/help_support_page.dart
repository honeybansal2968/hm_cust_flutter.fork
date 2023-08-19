import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HelpAndSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          }
          ,
          icon: const Icon(
            Icons.arrow_back_ios,
          )
        ),
        title: Text('Help and Support'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Frequently Asked Questions',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            FAQItem(
              question: 'How do I book a car service?',
              answer:
                  'You can book a car service by navigating to the "Book Service" section and selecting your preferred service package.',
            ),
            FAQItem(
              question: 'What payment methods are accepted?',
              answer:
                  'We accept various payment methods including credit/debit cards and digital wallets.',
            ),
            FAQItem(
              question: 'Can I reschedule my service appointment?',
              answer:
                  'Yes, you can reschedule your service appointment through the app. Just go to the "My Appointments" section.',
            ),
            SizedBox(height: 24),
            Text(
              'Contact Us',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'For further assistance, you can contact our support team:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Email: support@carserviceapp.com',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Phone: +123-456-7890',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        question,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(answer, style: TextStyle(fontSize: 16)),
        ),
      ],
    );
  }
}
