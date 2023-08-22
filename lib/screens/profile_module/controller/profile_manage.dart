import 'dart:io';

import 'package:get/get.dart';
import 'package:hm_cust_flutter/screens/profile_module/services/profile_services.dart';
ProfileResponse profileResponse = ProfileResponse();
class ProfileManage extends GetxController{
  Rx<File>? image=File("").obs;
  fetchImage(){
    profileResponse.pickImage().then((value) {
      image!.value = value!;
    });
  }
}