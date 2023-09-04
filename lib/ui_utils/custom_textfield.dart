import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hm_cust_flutter/ui_utils/app_colors.dart';

class CustomField extends StatelessWidget {
  final double? width;
  final String? FieldName;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final String? hintText;
  // final String? Function(String?)? validator;
  final TextEditingController? controller;

  const CustomField({
    Key? key,
    // required this.validator,
    this.width,
    this.FieldName,
    this.keyboardType,
    this.controller,
    this.onChanged,
    this.hintText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 2.0,
      shadowColor: const Color.fromARGB(255, 224, 224, 224),
      child: TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          cursorColor: Colors.black,
          onChanged: onChanged,
          cursorWidth: 1,

          // validator: validator,
          decoration: InputDecoration(
              prefixIcon: const Icon(CupertinoIcons.search,
                  color: AppColors.fadedColor),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 2.0,
                ),
              ),
              contentPadding: const EdgeInsets.only(bottom: 7),
              filled: true,
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 240, 8, 8),
                  width: 2.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 2.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 2.0,
                ),
              ),
              fillColor: Colors.white,
              hintText: "Search Services",
              hintStyle:
                  const TextStyle(fontSize: 14, color: AppColors.fadedColor))),
    );
  }
}

class PasswordField extends StatelessWidget {
  final double width;
  final TextInputAction textInputAction;
  final Function(String)? onChanged;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController passwordcontroller;

  const PasswordField({
    Key? key,
    required this.width,
    required this.textInputAction,
    required this.passwordcontroller,
    this.onChanged,
    this.hintText,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: GoogleFonts.getFont(
                'Nunito',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: passwordcontroller,
              textInputAction: textInputAction,
              cursorColor: Colors.black,
              onChanged: onChanged,
              cursorWidth: 1,
              validator: validator,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                helperText: ' ',
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xff0033ff),
                    width: 2.0,
                  ),
                ),
                contentPadding: const EdgeInsets.only(bottom: 7, left: 10),
                filled: true,
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 240, 8, 8),
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppColors.textFilledColor,
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xff0033ff),
                    width: 2.0,
                  ),
                ),
                fillColor: AppColors.textFilledColor,
                hintText: hintText,
                hintStyle: const TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 195, 195, 195),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
