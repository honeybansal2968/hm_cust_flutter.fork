import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  CustomField({super.key, required this.labelText, required this.controller});
 final  String labelText;
  final TextEditingController controller;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2, color: Color.fromARGB(255, 0, 109, 252))),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 201, 201, 201), width: 1.4)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 21, horizontal: 14),
              border: const OutlineInputBorder(),
              labelText: labelText,
              floatingLabelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 0, 109, 252)),
              labelStyle: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 100, 98, 98)))),
    );
  }
}