import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

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
            color: Colors.black,
          ),
        ),
        title: const Text('Privacy Policy'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              "At Helpy Moto, we take data privacy and security seriously to ensure a safe and trustworthy user experience for all our visitors and customers. To provide transparency, we want to share some important aspects of our data collection, sharing, and security practices.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              '1. Information Collection',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "We use standard web-logging methods, including cookies, to gather information about our website visitors. This includes details such as pages accessed, time of access, IP addresses, referring website/URL, and browser details. This data is crucial for understanding user behavior, enhancing website performance, and providing personalized services. However, we maintain strict adherence to privacy guidelines, and this information is purged after 30 days, ensuring that we retain only the necessary data for a limited period.For users who prefer social login on our website, using Facebook or Google authentication, we receive and store the corresponding email address, name, and basic public profile information. It's essential to clarify that we never receive or store user passwords, as the authentication process is managed securely by the service providers. This ensures an added layer of protection for our users' credentials.For accounts created, we never store passwords in plaintext. Instead, we utilize advanced security measures like hashed versions of passwords, making them virtually impossible to retrieve in their original form. This approach adds an extra level of security, mitigating the risk of unauthorized access.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              '2. Data Sharing',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "We prioritize the security of your personal information. We implement robust measures to safeguard the data we collect about our users. For instance, passwords are never stored in plaintext, adding an extra layer of protection against potential security breaches.We also restrict employee access to sensitive information, ensuring that only authorized personnel can handle such data. This practice minimizes the risk of unauthorized access and maintains the highest level of data protection.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              '3. System Security',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "We understand the criticality of maintaining a secure infrastructure. To this end, we employ comprehensive firewall measures to protect our servers and databases from unauthorized access. This ensures that any sensitive information is kept safe and inaccessible to unauthorized parties.For purchases made on our website, we prioritize payment security by never storing credit/debit card details on our servers. Instead, we only store transaction authorization data, while the card details are securely recorded with the merchant bank. This approach minimizes the risk of financial data exposure and ensures secure transactions for our valued customers.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
         
       
            Text(
              "Additionally, we have a zero-tolerance policy towards any form of malpractice or misuse of our platform. In the event of any detected malpractice, strict actions will be taken, and the required amount will be deducted from the user's account. The calculated amount will be based on a fair assessment, considering factors such as the percentage of travel in our database and the type of service involved.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
          
            Text(
             "In summary, Data privacy and Security are fundamental pillars of our operations. We are committed to protect your information, employing industry best practices, and adhering to applicable laws and regulations. By Implementing these measures, we aim to provide you with a safe and seamless experience on our platform.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
