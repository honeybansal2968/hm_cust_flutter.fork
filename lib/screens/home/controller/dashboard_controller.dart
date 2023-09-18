import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
 // handle sos service
 String selectedSosService="";
 updateSelectedSosService(String service){
   selectedSosService=service;
   update();
 }
  
  
}
