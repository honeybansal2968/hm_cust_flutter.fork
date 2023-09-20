import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/getx/authControllers.dart';
import 'package:hm_cust_flutter/screens/home/home.dart';
import 'package:hm_cust_flutter/screens/signin/pages/signin.dart';
import 'package:hm_cust_flutter/widgets/common/custom_textfield.dart';
import 'package:video_player/video_player.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/videos/HM_final.mp4")
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
        _controller.setVolume(0);
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    AuthController authcontroller = Get.put(AuthController());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Stack(
        alignment: Alignment.center,
        children: [
          _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: 4 / 4,
                  child: VideoPlayer(_controller),
                )
              : Container(),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width: size.width,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          color: Colors.transparent,
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10.0,
                                sigmaY: 10.0,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(5.0),
                                  boxShadow: const [],
                                ),
                                child: Column(children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: Image(
                                          image: AssetImage(
                                              "assets/images/main-logo.png"))),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  const Text(
                                    "Create a new account",
                                    style: TextStyle(
                                        color: Colors.white,
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
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.to(() => const SignInScreen());
                                        },
                                        child: const Text(
                                          " Sign In",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  0, 255, 94, 1)),
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
                                          authcontroller.firstNameController),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  CustomField(
                                      labelText: "Last Name *",
                                      controller:
                                          authcontroller.lastNameController),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  CustomField(
                                      labelText: "Email *",
                                      controller:
                                          authcontroller.emailController),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  CustomField(
                                      labelText: "Phone Number *",
                                      controller:
                                          authcontroller.phoneController),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text('Send OTP',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          decoration: TextDecoration.underline,
                                          decorationThickness: 2,
                                          decorationStyle:
                                              TextDecorationStyle.solid,
                                          decorationColor: Color.fromRGBO(
                                              255, 255, 255, 1))),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                      width: 285,
                                      height: 40,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape:
                                                  const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  5))),
                                              backgroundColor:
                                                  const Color.fromRGBO(143, 225,
                                                      173, 1)),
                                          onPressed: () =>
                                              Get.to(const MyHomePage()),
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
                                    color: const Color.fromARGB(
                                        255, 236, 231, 231),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    "Or, you can also sign up with Google!",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
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
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5))),
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 0, 228, 84)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                                      fontWeight:
                                                          FontWeight.bold),
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
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
