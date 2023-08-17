import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/getx/authControllers.dart';
import 'package:hm_cust_flutter/screens/home/home.dart';
import 'package:hm_cust_flutter/screens/signin/signin.dart';
import 'package:hm_cust_flutter/widgets/common/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 244, 246, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: size.width,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  color: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400, // Shadow color
                          spreadRadius: 0.0, // Spread radius (no spreading)
                          blurRadius:
                              8.0, // Blur radius (controls the intensity of the shadow)
                          offset: const Offset(0,
                              4), // Offset (X, Y) controls the direction of the shadow
                        ),
                      ],
                    ),
                    child: Column(children: [
                      const SizedBox(
                        height: 15,
                      ),
                    const SizedBox(
                      width: 50,
                      height: 50,
                      child: Image(
                          image: AssetImage("assets/images/main-logo.png"))),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "Create a new account",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(const SignInScreen());
                            },
                            child: const Text(
                              " Sign In",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(22, 163, 74, 1)),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      CustomField(
                          labelText: "First Name *",
                          controller:
                              AuthController.instance.firstNameController),
                      const SizedBox(
                        height: 8,
                      ),
                      CustomField(
                          labelText: "Last Name *",
                          controller:
                              AuthController.instance.lastNameController),
                      const SizedBox(
                        height: 8,
                      ),
                      CustomField(
                          labelText: "Email *",
                          controller: AuthController.instance.emailController),
                      const SizedBox(
                        height: 8,
                      ),
                      CustomField(
                          labelText: "Phone Number *",
                          controller: AuthController.instance.phoneController),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('Send OTP',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(126, 126, 126, 1),
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              decorationStyle: TextDecorationStyle.solid,
                              decorationColor:
                                  Color.fromRGBO(184, 184, 184, 1))),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                          width: 285,
                          height: 40,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  backgroundColor:
                                      const Color.fromRGBO(143, 225, 173, 1)),
                              onPressed: () => Get.to(const MyHomePage()),
                              child: const Text("Submit",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  )))),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 2,
                        width: 315,
                        color: const Color.fromARGB(255, 236, 231, 231),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Or, you can also sign up with Google!",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 40,
                        width: 280,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                backgroundColor:
                                    const Color.fromRGBO(34, 197, 94, 1)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: SvgPicture.asset(
                                    "assets/icons/google.svg",
                                    height: 22,
                                    width: 22,
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "Continue with Google",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 25,
                                    )
                                  ],
                                ),
                              ],
                            )),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ]),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
