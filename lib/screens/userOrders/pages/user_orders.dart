import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/screens/orderScreen/pages/orderScreen.dart';
import 'package:hm_cust_flutter/utils/utils.dart';
import 'package:hm_cust_flutter/utils/orderScreenUtils.dart';

class UserOrders extends StatelessWidget {
  const UserOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Your Orders",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(children: [
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(198, 255, 193, 1),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 3),
                          )
                        ]),
                    height: 53,
                    alignment: Alignment.center,
                    child: const MyStack()),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: SizedBox(
              height: 53,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color.fromRGBO(198, 255, 193, 1)),
                  onPressed: () {},
                  child: const Text("Scheduled",
                      style: TextStyle(color: Colors.black, fontSize: 20))),
            )),
          ]),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "On going services",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 7,
          ),
          orderCard(),
          orderCard(),
          const SizedBox(
            height: 12,
          ),
          const Text("Completed services",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 7,
          ),
          orderCard(),
          orderCard(),
          orderCard(),
          const SizedBox(
            height: 82,
          )
        ],
      ),
    ));
  }

  Widget orderCard() {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: () {
          Get.to(const OrderScreen());
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400, // Shadow color
                  spreadRadius: 0.0, // Spread radius (no spreading)
                  blurRadius:
                      1.0, // Blur radius (controls the intensity of the shadow)
                  offset: const Offset(0,
                      4), // Offset (X, Y) controls the direction of the shadow
                ),
              ]),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Color.fromRGBO(12, 249, 143, 1),
                    child:
                        Image(image: AssetImage("assets/images/main-logo.png")),
                  ),
                  Text(
                    "Provider Name",
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Workshop Name",
                    style: TextStyle(fontSize: 7, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TwoTextRichText(
                              priorText: "Date of booking: ",
                              priorFontSize: 11,
                              nextText: "12th March 2023, 3:45 PM",
                              nextFontSize: 11),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Ticket ID: ",
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromRGBO(16, 197, 0, 1),
                                ),
                                child: const Text(
                                  " 123456 ",
                                  style: TextStyle(
                                      fontSize: 11,
                                      letterSpacing: 3,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            "Vehicle Details",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    "Vehicle Number: ",
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "MH38rr9328",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: "Brand: ",
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                    )),
                                TextSpan(
                                    text: "Honda",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold))
                              ])),
                            ],
                          ),
                          const Row(
                            children: [
                              Text("Model: ",
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Text(
                                "City",
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: "Current Bill Amount: ",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    )),
                                TextSpan(
                                    text: "Rs. 1300",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold))
                              ])),
                              SizedBox(
                                  width: 80,
                                  height: 22,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.all(0),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(7)),
                                        backgroundColor:
                                            const Color.fromRGBO(16, 197, 0, 1),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        "PAY NOW",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 11),
                                      )))
                            ],
                          ),
                        ]),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 35,
            child: Center(
              child: Text(
                "On-Time",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            constraints: const BoxConstraints(
              minWidth: 16,
              minHeight: 16,
            ),
            child: const Text(
              "2",
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
