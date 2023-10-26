
import 'package:flutter/material.dart';

class Topbox extends StatelessWidget {
  final String bagtype;
  final String bagname;
  final String price;

  const Topbox(
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
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              bagname,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "Price",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              price,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            )
          ]),
        ),
      ),
    );
  }
}
