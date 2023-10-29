import 'package:bag_app/pages/page1.dart';
import 'package:bag_app/pages/page2.dart';
import 'package:bag_app/pages/page3.dart';
import 'package:bag_app/pages/page6.dart';
import 'package:flutter/material.dart';

import '../../widgets/box.dart';
import '../../widgets/color_theam.dart';



class Jewellery extends StatelessWidget {
  const Jewellery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffe9ebea),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: [
          Row(children: [

            Row(
              children: [
                InkWell(
                  child: box(
                    name: "jew1",
                    rate: "\$2500",
                    bakcolor:Colors.yellow.shade50,
                    coverpic: "assets/2.png",
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return page1();
                      },
                    ));
                  },
                ),
                InkWell(
                  child: box(
                    name: "bag2",
                    rate: "\$240",
                    coverpic: "assets/3.png",
                    bakcolor: mainColor9,
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return page2();
                      },
                    ));
                  },
                )
              ],
            ),
          ],),

          Row(
            children: [
              box(
                name: "bag3",
                rate: "\$260",
                bakcolor: mainColor3,
                coverpic: "assets/4.png",
              ),
              InkWell(
                child: box(
                  name: "bag4",
                  rate: "\$270",
                  coverpic: "assets/5.png",
                  bakcolor: mainColor7,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return page3();
                    },
                  ));
                },
              )
            ],
          ),
          Row(
            children: [
              box(
                name: "bag5",
                rate: "\$280",
                bakcolor: mainColor5,
                coverpic: "assets/6.png",
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return page6();
                    },
                  ));
                },
                child: box(
                  name: "bag6",
                  rate: "\$250",
                  coverpic: "assets/7.png",
                  bakcolor: mainColor6,
                ),
              )
            ],
          ),

        ]),
      ),
    );
  }
}
