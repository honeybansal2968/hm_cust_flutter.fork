import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookService extends StatelessWidget {
  const BookService({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Book a Service",
          style: GoogleFonts.nunito(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding:  EdgeInsets.symmetric(
              horizontal:
               size.width < 370
                  ?10
                  : size.width < 400
                      ? 18
                      : 25
                      ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTabButton(
                  title: "On-Time", icon: Icons.nordic_walking_outlined),
              CustomTabButton(title: "Schedule", icon: Icons.schedule)
            ],
          ),
          
        ),
       
       
      ],
    );
  }

  Widget CustomTabButton({required String title, required IconData icon}) {
    return SizedBox(
      height: 35,
      width: 140,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: const Color.fromARGB(255, 0, 36, 66)),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
