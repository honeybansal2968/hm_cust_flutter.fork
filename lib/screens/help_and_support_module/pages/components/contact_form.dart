import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hm_cust_flutter/screens/help_and_support_module/controller/help_and_support_controller.dart';
import 'package:hm_cust_flutter/widgets/common/custom_textfield.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: 'Get',
              style: GoogleFonts.nunito(
                fontSize: 22,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(color: Colors.black, offset: Offset(0, -5))],
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromARGB(255, 0, 90, 3),
                  decorationThickness: 6,
                  // decorationStyle: TextDecorationStyle.dashed,
                ),
              )),
          TextSpan(
              text: ' In Touch',
              style: GoogleFonts.nunito(
                fontSize: 23,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,

                  shadows: [Shadow(color: Colors.black, offset: Offset(0, -5))],
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.transparent,
                  decorationThickness: 6,
                  // decorationStyle: TextDecorationStyle.dashed,
                ),
              ))
        ])),
        const SizedBox(
          height: 20,
        ),
        GetBuilder<HelpAndSupportController>(
            init: HelpAndSupportController(),
            builder: (controller) {
              return SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Form(
                    key: controller.contactformKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          keyboardType: TextInputType.name,
                          FieldName: "Name",
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return "Name field is required";
                            }
                            return null;
                          },
                          controller: controller.contactNameController,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        // if Usermodel has email then pre fill the email field with that email for better UX
                        CustomTextField(
                          keyboardType: TextInputType.emailAddress,
                          FieldName: "Email Address",
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return "Email field is required";
                            }
                            String p =
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

                            RegExp regExp = RegExp(p);

                            if (regExp.hasMatch(p0) == false) {
                              return "Please enter a valid email";
                            }
                            return null;
                          },
                          controller: controller.contactEmailController,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextField(
                          keyboardType: TextInputType.multiline,
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return "Message field is required";
                            }
                            return null;
                          },
                          FieldName: "Message",
                          maxLines: 3,
                          controller: controller.contactMessageController,
                        ),
                        SizedBox(
                          height: 35,
                          width: 120,
                          child: ElevatedButton(
                            onPressed: () {
                              if (!controller.contactformKey.currentState!
                                  .validate()) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                        backgroundColor: Colors.red,
                                        content: Text(
                                          "Please fill all the fields",
                                          style: GoogleFonts.nunito(
                                              color: Colors.white),
                                        )));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(59, 59, 245, 1),
                                shadowColor: Colors.transparent),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "SEND",
                                  style:
                                      GoogleFonts.nunito(color: Colors.white),
                                ),
                                const Icon(
                                  Icons.mail_outline_outlined,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
              );
            }),
      ],
    );
  }
}
