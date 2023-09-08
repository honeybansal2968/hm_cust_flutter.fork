import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  List<Widget> widgets;
  CustomColumn({super.key, required this.widgets});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(30)),
      ),
      child: Column(children: widgets.map((e) => e).toList()),
    );
  }
}
