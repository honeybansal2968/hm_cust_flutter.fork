import 'package:flutter/material.dart';
import 'package:hm_cust_flutter/screens/home/pages/components/banner.dart';
import 'package:hm_cust_flutter/screens/home/pages/components/book_service_widget.dart';
import 'package:hm_cust_flutter/screens/home/pages/components/customColumn.dart';
import 'package:hm_cust_flutter/screens/home/pages/components/serviceswidget.dart';
import 'package:hm_cust_flutter/ui_utils/custom_textfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // search bar
            CustomColumn(widgets: const [
              CustomField(),
              // const LocationBar(),
    
              SizedBox(
                height: 15,
              ),
              // all banners
              BannerCarousel(),
              SizedBox(
                height: 15,
              ),
              BookService()
            ]),
            const SizedBox(
              height: 15,
            ),
            const ServicesWidget()
            // SizedBox(
            //   height: 150,
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       children: [
            //         // const CustomBanner(),
            //         ActionChip(
            //           label: const Text("Got stuck hire a mechanic now"),
            //           onPressed: () {},
            //         ),
            //         const SizedBox(
            //           width: 15,
            //         ),
            //         ActionChip(
            //           backgroundColor: Colors.blue.shade100,
            //           label: const Text(
            //               "Got drunk don't worry hire a driver now"),
            //           onPressed: () {},
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 50,
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       children: [
            //         ActionChip(
            //           backgroundColor: Colors.amber.shade100,
            //           label: const Text(
            //               "Need to go long drive don't worry clean your vehicle now"),
            //           onPressed: () {},
            //         ),
            //         const SizedBox(
            //           width: 15,
            //         ),
            //         ActionChip(
            //           label: const Text(
            //               "Got drunk don't worry hire a driver now"),
            //           onPressed: () {},
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(0.0),
            //   child: Container(
            //     width: double.maxFinite,
            //     height: 200,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(8),
            //         color: Colors.yellow.shade100),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       children: [
            //         const Text("Image Space"),
            //         const Text("Text Space"),
            //         ElevatedButton(
            //             style: ButtonStyle(
            //                 shape: MaterialStateProperty.all(
            //                     RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(30))),
            //                 elevation: const MaterialStatePropertyAll(8),
            //                 backgroundColor: MaterialStatePropertyAll(
            //                     Colors.red.shade400)),
            //             onPressed: () {},
            //             child: const Text("Click me"))
            //       ],
            //     ),
            //   ),
            // ),
            // const Align(
            //     alignment: Alignment.centerLeft,
            //     child: Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: Text(
            //         "Service Provider",
            //         style: TextStyle(fontSize: 20),
            //       ),
            //     )),
            // Container(
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       children: [
            //         Container(
            //           margin: const EdgeInsets.all(5),
            //           decoration: BoxDecoration(
            //             color: Colors.blueGrey.shade200,
            //             borderRadius:
            //                 const BorderRadius.all(Radius.circular(8)),
            //           ),
            //           height: 100,
            //           width: 150,
            //           child: const Center(
            //             child: Text(
            //               "Mechanic",
            //               style: TextStyle(
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //           ),
            //         ),
            //         Container(
            //           margin: const EdgeInsets.all(5),
            //           decoration: BoxDecoration(
            //             color: Colors.blueGrey.shade200,
            //             borderRadius:
            //                 const BorderRadius.all(Radius.circular(8)),
            //           ),
            //           height: 100,
            //           width: 150,
            //           child: const Center(
            //               child: Text(
            //             "Cleaner",
            //             style: TextStyle(
            //               fontSize: 20,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           )),
            //         ),
            //         Container(
            //           margin: const EdgeInsets.all(5),
            //           decoration: BoxDecoration(
            //             color: Colors.blueGrey.shade200,
            //             borderRadius:
            //                 const BorderRadius.all(Radius.circular(8)),
            //           ),
            //           height: 100,
            //           width: 150,
            //           child: const Center(
            //               child: Text(
            //             "Driver",
            //             style: TextStyle(
            //               fontSize: 20,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           )),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // const Align(
            //     alignment: Alignment.centerLeft,
            //     child: Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: Text(
            //         "Types of Services",
            //         style: TextStyle(fontSize: 20),
            //       ),
            //     )),
            // Container(
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       children: [
            //         Container(
            //           margin: const EdgeInsets.all(5),
            //           decoration: BoxDecoration(
            //             color: Colors.blueGrey.shade200,
            //             borderRadius:
            //                 const BorderRadius.all(Radius.circular(8)),
            //           ),
            //           height: 100,
            //           width: 200,
            //           child: const Center(
            //               child: Text(
            //             "Ontime service",
            //             style: TextStyle(
            //               fontSize: 20,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           )),
            //         ),
            //         Container(
            //           margin: const EdgeInsets.all(5),
            //           decoration: BoxDecoration(
            //             color: Colors.blueGrey.shade200,
            //             borderRadius:
            //                 const BorderRadius.all(Radius.circular(8)),
            //           ),
            //           height: 100,
            //           width: 200,
            //           child: const Center(
            //               child: Text(
            //             "Schedule Service",
            //             style: TextStyle(
            //               fontSize: 20,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           )),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // const Align(
            //     alignment: Alignment.centerLeft,
            //     child: Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: Text(
            //         "SOS service",
            //         style: TextStyle(fontSize: 20),
            //       ),
            //     )),
            // Container(
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       children: [
            //         Container(
            //           margin: const EdgeInsets.all(5),
            //           decoration: BoxDecoration(
            //             color: Colors.blueGrey.shade200,
            //             borderRadius:
            //                 const BorderRadius.all(Radius.circular(8)),
            //           ),
            //           height: 100,
            //           width: 150,
            //           child: const Center(child: Text("Call to ambulance")),
            //         ),
            //         Container(
            //           margin: const EdgeInsets.all(5),
            //           decoration: BoxDecoration(
            //             color: Colors.blueGrey.shade200,
            //             borderRadius:
            //                 const BorderRadius.all(Radius.circular(8)),
            //           ),
            //           height: 100,
            //           width: 150,
            //           child: const Center(
            //               child: Text(
            //             "Call to nearby police station",
            //             textAlign: TextAlign.center,
            //           )),
            //         ),
            //         Container(
            //           margin: const EdgeInsets.all(5),
            //           decoration: BoxDecoration(
            //             color: Colors.blueGrey.shade200,
            //             borderRadius:
            //                 const BorderRadius.all(Radius.circular(8)),
            //           ),
            //           height: 100,
            //           width: 150,
            //           child: const Center(
            //               child: Text("Require Towing service",
            //                   textAlign: TextAlign.center)),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // const SizedBox(
            //   height: 90,
            // ),
          ],
        ),
      ),
    );
  }
}
