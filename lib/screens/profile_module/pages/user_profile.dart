import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: 390,
          height: 188,
          decoration: const BoxDecoration(color: Color(0xFFFF8D76)),
        ),
        Container(
          width: 390,
          height: 29,
          decoration: const BoxDecoration(color: Color(0xFFF6F6F6)),
        ),
        Container(
          width: 401,
          height: 44,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: Stack(
            children: [
              const Positioned(
                left: 0,
                top: 0,
                child: SizedBox(
                  width: 401,
                  height: 30,
                  child: Stack(children: []),
                ),
              ),
              Positioned(
                left: 318,
                top: 16,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 20,
                        height: 14,
                        child: Stack(children: []),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        width: 16,
                        height: 14,
                        padding: const EdgeInsets.only(
                          top: 2,
                          left: 1,
                          right: 0.75,
                          bottom: 2,
                        ),
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [],
                        ),
                      ),
                      const SizedBox(width: 4),
                      SizedBox(
                        width: 25,
                        height: 14,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 2,
                              top: 3,
                              child: Container(
                                width: 19,
                                height: 8,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 324,
                top: 8,
                child: SizedBox(
                  width: 6,
                  height: 6,
                  child: Stack(children: []),
                ),
              ),
              Positioned(
                left: 21,
                top: 12,
                child: Container(
                  width: 54,
                  height: 21,
                  padding: const EdgeInsets.only(
                      top: 3, left: 11, right: 10, bottom: 3),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 33,
                        height: 15,
                        padding: const EdgeInsets.only(
                          top: 2,
                          left: 2,
                          right: 2.57,
                          bottom: 1.91,
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 122,
          height: 122,
          decoration: const ShapeDecoration(
            image: DecorationImage(
              image: NetworkImage("https://via.placeholder.com/122x122"),
              fit: BoxFit.fill,
            ),
            shape: OvalBorder(
              side: BorderSide(width: 2.50, color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          width: 26,
          height: 30,
          child: Stack(children: []),
        ),
        Container(
          width: 19,
          height: 19,
          padding: const EdgeInsets.symmetric(horizontal: 1.19),
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [],
          ),
        ),
        Container(
          width: 105,
          height: 29,
          decoration: ShapeDecoration(
            color: const Color(0xFF171E1D),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ),
        const Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    ));
  }
}
