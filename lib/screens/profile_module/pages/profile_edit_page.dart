import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/screens/profile_module/controller/profile_manage.dart';
import 'package:hm_cust_flutter/themes/colors.dart';
import 'package:hm_cust_flutter/widgets/common/custom_textfield.dart';
import 'package:image_picker/image_picker.dart';

class ProfileEditPage extends StatelessWidget {
  ProfileEditPage({Key? key}) : super(key: key);
  ProfileManage profileManageController = Get.put(ProfileManage());
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Profile'),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const InkWell(
                            // onTap: () {
                            //   profileManageController.fetchImage();
                            // },
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 98, 197, 236),
                              radius: 40,
                              // backgroundImage:  profileManageController.image!.value,
                              // child: profileManageController.image!.value == null
                              //     ? const Icon(Icons.camera)
                              //     : null,
                            ),
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: kSecondaryColor),
                            onPressed: () {},
                            child: const Text(
                              'Save',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Contact Info',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomField(
                        labelText: "Email", controller: emailController),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomField(
                        labelText: "Phone", controller: phoneController),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
