import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hm_cust_flutter/getx/authControllers.dart';
import 'package:hm_cust_flutter/screens/home/home.dart';
import 'package:hm_cust_flutter/screens/signup/signup.dart';
import 'package:hm_cust_flutter/widgets/common/custom_textfield.dart';
import 'package:video_player/video_player.dart';

/// clear all the textediting controller before coming to this page that means on every button which redirects to this page
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                          boxShadow: const [
                            // BoxShadow(
                            //   color: Colors.grey.shade400, // Shadow color
                            //   spreadRadius: 0.0, // Spread radius (no spreading)
                            //   blurRadius:
                            //       8.0, // Blur radius (controls the intensity of the shadow)
                            //   offset: const Offset(0,
                            //       4), // Offset (X, Y) controls the direction of the shadow
                            // ),
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
                                  image: AssetImage(
                                      "assets/images/main-logo.png"))),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            "Login to your account",
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
                                "Don't have an account yet?",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(() => const SignUpScreen());
                                },
                                child: const Text(
                                  " Sign up",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 255, 94, 1)),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          CustomField(
                              labelText: "Phone Number *",
                              controller:
                                  AuthController.instance.phoneController),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text('Send OTP',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                  decorationStyle: TextDecorationStyle.solid,
                                  decorationColor:
                                      Color.fromRGBO(255, 255, 255, 1))),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                              width: 285,
                              height: 40,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      backgroundColor: const Color.fromARGB(
                                          255, 74, 210, 124)),
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
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Or, you can also sign in with Google!",
                            style: TextStyle(
                                fontSize: 15,
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
                                        const Color.fromARGB(255, 0, 228, 84)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/google.svg",
                                      height: 22,
                                      width: 22,
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
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
