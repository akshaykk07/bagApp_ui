
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Topbox extends StatelessWidget {
  final String bagtype;
  final String bagname;
  final String price;

   Topbox(
      {super.key,
        required this.bagtype,
        required this.bagname,
        required this.price,
      });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(left: 20, top: 10),
        child: SizedBox(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              bagtype,
              style:GoogleFonts.poppins( color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500)
            ),
            Text(
              bagname,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Text(
              "Price",
              style: GoogleFonts.poppins( color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500)
            ),
            Text(
              price,
              style: GoogleFonts.poppins(color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1),
            )
          ]),
        ),
      ),
    );
  }
}
