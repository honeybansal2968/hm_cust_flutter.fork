import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hm_cust_flutter/ui_utils/app_colors.dart';
import 'package:hm_cust_flutter/ui_utils/custom_textfield.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.location_fill,
                        size: 18,
                        color: Color.fromARGB(255, 31, 31, 31),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sant Nagar Rani Bagh, Delhi - 110034",
                        style:
                            TextStyle(color: Color.fromARGB(255, 31, 31, 31)),
                      )
                    ],
                  ),
                  Icon(
                    CupertinoIcons.question_circle_fill,
                    size: 18,
                    color: Color.fromARGB(255, 31, 31, 31),
                  ),
                ]),
          ),
          CustomField(),
        ],
      ),
    );
  }
}

class LocationBar extends StatelessWidget {
  const LocationBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: const Row(children: [
        Icon(
          CupertinoIcons.location_fill,
          size: 18,
          color: Color.fromARGB(255, 31, 31, 31),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Sant Nagar Rani Bagh, Delhi - 110034",
          style: TextStyle(color: Color.fromARGB(255, 31, 31, 31)),
        )
      ]),
    );
  }
}
