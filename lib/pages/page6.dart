import 'package:bag_app/widgets/bottom_box.dart';
import 'package:bag_app/widgets/img.dart';
import 'package:bag_app/widgets/top_box.dart';
import 'package:flutter/material.dart';

import '../widgets/color_theam.dart';

class page6 extends StatelessWidget {
  const page6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor6,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              )),
          const SizedBox(
            width: 5,
          )
        ],
      ),
      backgroundColor: mainColor6,
      body: Stack(children: [
        Column(children: [
          Expanded(
              flex: 3,
              child: Topbox(
                  bagtype: "Aristrocratic Hand Bag",
                  bagname: ("Party Bag"),
                  price: "\$250")),
          Expanded(
              flex: 6,
              child: Bottombox(ccircle: mainColor6,
                description:
                "The super-stylish Walker leather unisex duffle bag is undoubtedly a trendsetter all year. This opulent,oblong weekender bag is made of the finest quality goat leather,accentuated with intricate detailing on the stitches. ",
                btncolr: mainColor6,
                Size: "10 cm",
              )),
        ]),
        const Positioned(left: 120,top: -10,right: 5,
            child: img(image:  "assets/bg9.png",)
        )
      ]),
    );
  }
}
