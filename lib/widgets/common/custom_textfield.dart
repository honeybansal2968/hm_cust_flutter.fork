import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hm_cust_flutter/ui_utils/app_colors.dart';

class CustomField extends StatelessWidget {
  const CustomField(
      {super.key,
      required this.labelText,
      required this.controller,
      this.borderColor,
      this.textColor});
  final String labelText;
  final Color? borderColor;
  final Color? textColor;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: TextFormField(
          controller: controller,
          style: TextStyle(color: textColor ?? Colors.white),
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: borderColor ??
                          const Color.fromARGB(255, 255, 255, 255))),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: borderColor ??
                          const Color.fromARGB(255, 255, 255, 255),
                      width: 1.4)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 14),
              border: const OutlineInputBorder(),
              labelText: labelText,
              floatingLabelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: textColor ?? const Color.fromARGB(255, 255, 255, 255)),
              labelStyle: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 100, 98, 98)))),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final double? width;
  final String? FieldName;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final int? maxLines;
  final bool? expands;
  const CustomTextField({
    Key? key,
    this.validator,
    this.maxLines,
    this.expands,
    this.width,
    this.FieldName,
    required this.keyboardType,
    required this.controller,
    this.onChanged,
    this.hintText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0),
      width: width,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          FieldName!,
          softWrap: true,
          style: GoogleFonts.getFont("Nunito",
              fontSize: 15, fontWeight: FontWeight.bold),
        ),
        TextFormField(
            expands: expands ?? false,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: controller,
            keyboardType: keyboardType,
            cursorColor: Colors.black,
            onChanged: onChanged,
            maxLines: maxLines ?? 1,
            cursorWidth: 1,
            validator: validator,
            decoration: InputDecoration(
                helperText: " ",
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xff0033ff),
                    width: 2.0,
                  ),
                ),
                contentPadding: maxLines != null
                    ? const EdgeInsets.only(
                        top: 20, bottom: 7, left: 10, right: 10)
                    : const EdgeInsets.only(bottom: 7, left: 10),
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
                    fontSize: 14, color: Color.fromARGB(255, 195, 195, 195))))
      ]),
    );
  }
}
