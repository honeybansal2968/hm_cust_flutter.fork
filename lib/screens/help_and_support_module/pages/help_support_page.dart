import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hm_cust_flutter/screens/help_and_support_module/pages/components/contact_form.dart';

class HelpAndSupportPage extends StatelessWidget {
  const HelpAndSupportPage({super.key});

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
        title: const Text('Help and Support'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Frequently Asked Questions',
              style:
                  GoogleFonts.nunito(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const FAQItem(
              question: 'How do I book a car service?',
              answer:
                  'You can book a car service by navigating to the "Book Service" section and selecting your preferred service package.',
            ),
            const FAQItem(
              question: 'What payment methods are accepted?',
              answer:
                  'We accept various payment methods including credit/debit cards and digital wallets.',
            ),
            const FAQItem(
              question: 'Can I reschedule my service appointment?',
              answer:
                  'Yes, you can reschedule your service appointment through the app. Just go to the "My Appointments" section.',
            ),
            const SizedBox(height: 24),
            const ContactForm(),
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 0, 16, 48),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Column(
                children: [
                  Text(
                    'For further assistance, you can contact our support team:',
                    style: GoogleFonts.nunito(color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  customRow(key: 'Email', value: 'support@carserviceapp.com'),
                  customRow(key: 'Phone', value: '+123-456-7890'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customRow({String? key, String? value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "$key: ",
          style: GoogleFonts.nunito(color: Colors.white),
        ),
        Text(
          value!,
          style: GoogleFonts.nunito(color: Colors.white),
        )
      ],
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  const FAQItem({super.key, required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        question,
        style: GoogleFonts.nunito(fontSize: 18),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(answer, style: GoogleFonts.nunito(fontSize: 16)),
        ),
      ],
    );
  }
}
