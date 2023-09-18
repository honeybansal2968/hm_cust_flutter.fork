import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceProviderCarousel extends StatelessWidget {
  const ServiceProviderCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Near by Service Provider",
            style: GoogleFonts.nunito(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          CarouselSlider(
              disableGesture: false,
              options: CarouselOptions(
                  height: 100,
                  viewportFraction: 0.8,
                  padEnds: false,
                  enlargeFactor: 0.2,
                  enlargeCenterPage: true,
                  onPageChanged: (position, reason) {},
                  enableInfiniteScroll: false,
                  autoPlay: false),
              items: [
                ServiceProviderCard(
                    provider: "Mechanic",
                    gifLink:
                        "https://media.tenor.com/veeLGKx_H-oAAAAi/zurichschweiz-zurichinsurance.gif"),
                ServiceProviderCard(
                    provider: "Cleaner",
                    gifLink:
                        "https://cdn.dribbble.com/users/479967/screenshots/2838999/comp_1_9.gif"),
                ServiceProviderCard(
                    provider: "Driver",
                    gifLink:
                        "https://cdn.dribbble.com/users/662463/screenshots/2452166/driving_car_animation.gif"),
              ]),
        ],
      ),
    );
  }
}

class ServiceProviderCard extends StatelessWidget {
  String provider;
  String gifLink;
  ServiceProviderCard(
      {super.key, required this.provider, required this.gifLink});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    provider,
                    style: GoogleFonts.nunito(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Flexible(
                    child: Text(
                      provider == "Mechanic"
                          ? "Hire a mechanic now"
                          : provider == "Cleaner"
                              ? "Hire a cleaner now"
                              : "Hire a driver now",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Image.network(
              gifLink,
              width: 100,
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}
