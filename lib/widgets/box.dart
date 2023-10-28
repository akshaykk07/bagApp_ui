import 'package:bag_app/widgets/color_theam.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class box extends StatelessWidget {
  final String coverpic;
  final Color bakcolor;
  final String name;
  final String rate;

  const box({super.key, required this.coverpic, required this.bakcolor, required this.name, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10,right: 10,top: 10),
      child: SizedBox(
        height: 250,
        width: 165,
        child: Column(children: [
          SizedBox(
            child: Container(
              height: 180,
              width: 165,
              child: Image.asset(coverpic),
              decoration: BoxDecoration(
                  color: bakcolor, borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Container(
            height: 60,
            width: 165,
            decoration: BoxDecoration(
                color:Color(0xffe9ebea),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )),
            child:
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                  height: 3,
              ),
              Text(
               name,
                  style:GoogleFonts.poppins( color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500)
              ),
              Text(
                  rate,
                  style: GoogleFonts.roboto(color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)
              )
            ]),
                ),
          )
        ]),
      ),
    );
  }
}
