import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/utils/orderScreenUtils.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            )),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          child: const Row(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Taking much time?",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    Text("Convert this to scheduled service now",
                        style: TextStyle(color: Colors.white, fontSize: 13.5))
                  ]),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Orders Details",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      "Ticket ID: ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(16, 197, 0, 1),
                      ),
                      child: const Text(
                        " XXXXXXX ",
                        style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 4,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const TwoTextRichText(
                    priorText: "Status: ",
                    priorFontSize: 13,
                    nextText: "On-going",
                    nextFontSize: 15),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Vehicle Details:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 6,
            ),
            const TwoTextRichText(
                priorText: "Vehicle Number: ",
                priorFontSize: 16.38,
                nextText: "OMZ398239dqo",
                nextFontSize: 18),
            const SizedBox(
              height: 3,
            ),
            const TwoTextRichText(
                priorText: "Brand: ",
                priorFontSize: 16.38,
                nextText: "Honda",
                nextFontSize: 18),
            const SizedBox(
              height: 3,
            ),
            const TwoTextRichText(
                priorText: "Model: ",
                priorFontSize: 16.38,
                nextText: "City",
                nextFontSize: 18),
            const SizedBox(
              height: 12,
            ),
            const Text("Provider Details: ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 6,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Image(
                    image: AssetImage("assets/images/main-logo.png")),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: "Name: ",
                              style: TextStyle(
                                fontSize: 16.38,
                                fontWeight: FontWeight.w500,
                              )),
                          TextSpan(
                              text: "Provider Name",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold))
                        ])),
                        const SizedBox(
                          height: 3,
                        ),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: "Workshop Name: ",
                              style: TextStyle(
                                fontSize: 16.38,
                                fontWeight: FontWeight.w500,
                              )),
                          TextSpan(
                              text: "Workshop Name",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold))
                        ])),
                      ]),
                ),
              )
            ]),
            const SizedBox(
              height: 12,
            ),
            const Text("Service Added: ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 6,
            ),
            ListView.builder(
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return CustomItem(serviceName: "Cleaning", price: 100);
                }),
            const SizedBox(
              height: 12,
            ),
            const Text("Add New Service: ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 6,
            ),
            const MyDropdown(),
            const SizedBox(
              height: 42,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  borderRadius: BorderRadius.circular(23),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: const Offset(0, 1),
                    )
                  ]),
              height: 63,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Taking much time?",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        Text("Convert this to scheduled service now",
                            style:
                                TextStyle(color: Colors.white, fontSize: 13.5))
                      ]),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      )),
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
