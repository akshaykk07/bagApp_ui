import 'package:bag_app/pages/page1.dart';
import 'package:bag_app/pages/page2.dart';
import 'package:bag_app/pages/page3.dart';
import 'package:bag_app/widgets/box.dart';
import 'package:bag_app/widgets/color_theam.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
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
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 70,
                  width: double.infinity,
                  child:  Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text(
                      "Women",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                        SizedBox(height: 5,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hand Bag"),
                              SizedBox(height: 3,),
                              Container(height: 5,width: 40,color: Colors.black,)
                            ],
                          ),Text("Jewellery"),Text("Footwear"),Text("Dresses")],)
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
                        InkWell(
                          child: box(
                            bakcolor: mainColor3,
                            coverpic: "assets/bg4.png",
                          ),
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) {
                              return page3();
                            },));
                          },
                        ),
                        box(
                          coverpic: "assets/bg5.png",
                          bakcolor: mainColor4,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        box(
                          bakcolor: mainColor5,
                          coverpic: "assets/bg6.png",
                        ),
                        box(
                          coverpic: "assets/bag7.png",
                          bakcolor: mainColor6,
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
