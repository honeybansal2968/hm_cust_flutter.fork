import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hm_cust_flutter/screens/home/controller/dashboard_controller.dart';

class SosBottomSheet {
  static sosBottomSheet(context) {
    return showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        builder: (builder) {
          return Container(
            height: 270.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              color: Color(0xfff5f5f5),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Emergency Services At Nearby",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              GetBuilder<DashboardController>(
                init: DashboardController(),
                builder: (controller) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sosService(
                          icon: const Icon(
                            Icons.local_hospital,
                            color: Colors.red,
                          ),
                          service: "Ambulance"),
                      sosService(
                          icon: const Icon(
                            Icons.local_police,
                            color: Color(0xff002c50),
                          ),
                          service: "Police Station"),
                      sosService(
                          icon: const Icon(
                            Icons.car_crash,
                            color: Color(0xffe9c122),
                          ),
                          service: "Towing Service"),
                      // ignore: prefer_const_constructors
                      SizedBox(
                          height: 35,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              onPressed: controller.selectedSosService.isEmpty
                                  ? () {}
                                  : () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: controller
                                          .selectedSosService.isEmpty
                                      ? const Color.fromARGB(255, 255, 111, 101)
                                      : const Color(0xffff1302)),
                              child: const Text("Connect")))
                    ],
                  );
                },
              )
            ]),
          );
        });
  }

  static Widget sosService({required Icon icon, required String service}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icon,
                const SizedBox(
                  width: 15,
                ),
                Text(
                  service,
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            Radio(
                value: service,
                fillColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 0, 45, 82)),
                groupValue: Get.find<DashboardController>().selectedSosService,
                onChanged: (value) {
                  Get.find<DashboardController>()
                      .updateSelectedSosService(value.toString());
                })
          ],
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
