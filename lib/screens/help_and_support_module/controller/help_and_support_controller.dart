import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpAndSupportController extends GetxController{
  GlobalKey<FormState> contactformKey = GlobalKey<FormState>();
  TextEditingController contactNameController = TextEditingController();
  TextEditingController contactEmailController = TextEditingController();
  TextEditingController contactMessageController = TextEditingController();

}