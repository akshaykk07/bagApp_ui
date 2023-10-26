import 'package:bag_app/widgets/color_theam.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class box extends StatelessWidget {
  final String coverpic;
  final Color bakcolor;

  const box({super.key, required this.coverpic, required this.bakcolor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SizedBox(
        height: 220,
        width: 165,
        child: Column(children: [
          SizedBox(
            child: Container(
              height: 170,
              width: 165,
              child: Image.asset(coverpic),
              decoration: BoxDecoration(
                  color: bakcolor, borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Container(
            height: 50,
            width: 165,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 3,
              ),
              Text(
                "office Code",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "\$234",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
