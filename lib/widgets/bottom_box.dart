import 'package:bag_app/widgets/add_btn.dart';
import 'package:bag_app/widgets/buybtn.dart';
import 'package:bag_app/widgets/color_circle.dart';
import 'package:bag_app/widgets/color_theam.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bottombox extends StatelessWidget {
  final String description;
  final Color btncolr;
  final String Size;
  final Color ccircle;

  const Bottombox(
      {super.key,
        required this.description,
        required this.btncolr, required this.Size, required this.ccircle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration:  const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(children: [
         Ccircle(size: Size,Colrcircle:ccircle),
          SizedBox(height: 20,),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Text(
              description,
              style: GoogleFonts.roboto(fontSize: 12, letterSpacing:1,wordSpacing: 1),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Addbtn(),
          SizedBox(
            height: 10,
          ),
         Buybtn(theam: btncolr,)
        ]),
      ),
    );
  }
}
