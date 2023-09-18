import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hm_cust_flutter/screens/home/helper/constant.dart';


class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Services",
            style: GoogleFonts.nunito(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return index != 5
                  ? customServiceCard(HomeHelper.services[index],
                      HomeHelper.servicesIcons[index])
                  : morerServicesCard();
            },
          )
        ],
      ),
    );
  }

  Widget customServiceCard(String service, String serviceImage) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 2,
            ),
            Image.asset(
              serviceImage,
              width: 50,
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Text(
                service,
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 14, color: const Color.fromARGB(255, 0, 35, 65)),
              ),
            )
          ],
        ));
  }

  Widget morerServicesCard() {
    return InkWell(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.category_rounded,
                color: Color.fromRGBO(12, 249, 143, 1),
                size: 50,
              ),
              Text(
                "More Services",
                style: GoogleFonts.nunito(
                    fontSize: 14, color: const Color.fromARGB(255, 0, 35, 65)),
              )
            ],
          )),
    );
  }
}
