import 'package:bag_app/pages/page1.dart';
import 'package:bag_app/pages/page2.dart';
import 'package:bag_app/pages/page3.dart';
import 'package:bag_app/pages/page6.dart';
import 'package:bag_app/widgets/box.dart';
import 'package:bag_app/widgets/color_theam.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffe9ebea),
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_sharp,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                )),
            const SizedBox(
              width: 5,
            )
          ],
        ),
        backgroundColor: Color(0xffe9ebea),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Women",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hand Bag",
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  height: 5,
                                  width: 40,
                                  color: Colors.black,
                                )
                              ],
                            ),
                            Text(
                              "Jewellery",
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                            Text(
                              "Footwear",
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                            Text(
                              "Dresses",
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            )
                          ],
                        )
                      ]),
                ),
              ),
              Expanded(
                  child: ListView(
                children: [
                  Column(children: [
                    Row(
                      children: [
                        InkWell(
                          child: box(
                            name: "bag1",
                            rate: "\$250",
                            bakcolor: mainColor1,
                            coverpic: "assets/bg1.png",
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
                            coverpic: "assets/bag3.png",
                            bakcolor: mainColor2,
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
                    Row(
                      children: [
                        box(
                          name: "bag3",
                          rate: "\$260",
                          bakcolor: mainColor3,
                          coverpic: "assets/bg4.png",
                        ),
                        InkWell(
                          child: box(
                            name: "bag4",
                            rate: "\$270",
                            coverpic: "assets/bg5.png",
                            bakcolor: mainColor4,
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
                          coverpic: "assets/bg6.png",
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
                            coverpic: "assets/bg9.png",
                            bakcolor: mainColor6,
                          ),
                        )
                      ],
                    ),
                  ])
                ],
              ))
            ],
          ),
        ));
  }
}
