import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {
  const MyDropdown({super.key});

  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  // Initial Selected Value
  String dropdownvalue = '';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: Container(
            height: 33,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400, // Shadow color
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: const Offset(0, 4),
                  )
                ]),
            child: DropdownButton(
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              isExpanded: true,
              underline: Container(), //remove underline
              hint: const Text("Select Service",
                  style: TextStyle(fontSize: 15.5)),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              backgroundColor: const Color.fromRGBO(16, 197, 0, 1)),
          child: const Text("Add",
              style: TextStyle(
                  fontSize: 16.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          onPressed: () {},
        )
      ],
    );
  }
}

class CustomItem extends StatelessWidget {
 final String serviceName;
 final  int price;
  CustomItem({super.key, required this.serviceName, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(serviceName,
              style: const TextStyle(
                  fontSize: 16.38, fontWeight: FontWeight.w500)),
          Text("Rs. $price",
              style: const TextStyle(
                  fontSize: 15.11, fontWeight: FontWeight.w500)),
        ]),
        Container(
          padding: const EdgeInsets.all(3),
          decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 1, color: Color.fromARGB(255, 223, 223, 223))),
          ),
        )
      ],
    );
  }
}

class TwoTextRichText extends StatelessWidget {
  final String priorText;
  final double priorFontSize;
  final String nextText;
  final double nextFontSize;
  const TwoTextRichText(
      {super.key,
      required this.priorText,
      required this.priorFontSize,
      required this.nextText,
      required this.nextFontSize});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: priorText,
          style: TextStyle(
            color: Colors.black,
            fontSize: priorFontSize,
            fontWeight: FontWeight.w500,
          )),
      TextSpan(
          text: nextText,
          style: TextStyle(fontSize: nextFontSize, fontWeight: FontWeight.bold, color: Colors.black))
    ]));
  }
}
