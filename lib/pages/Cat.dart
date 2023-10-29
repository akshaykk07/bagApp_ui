import 'package:bag_app/pages/Handbag.dart';
import 'package:bag_app/pages/footware/foot.dart';
import 'package:bag_app/pages/je/jewellery.dart';
import 'package:bag_app/pages/page1.dart';
import 'package:bag_app/pages/page2.dart';
import 'package:bag_app/pages/page3.dart';
import 'package:bag_app/pages/page6.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffe9ebea),
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_sharp,
                color: Colors.grey,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.grey,
                  )),
              const SizedBox(
                width: 5,
              )
            ],
          ),
          body: Column(crossAxisAlignment:CrossAxisAlignment.start,
            children: [SizedBox(height: 5,),
              Row(
                children: [
                 SizedBox(width: 18,), Text("Women",style:TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
                ],
              ),
              TabBar(
                tabs: [
                  Tab(child: Text("Hand Bag",style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500),)),
                  Tab(
                    child: Text("Jewellery",style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500),),
                  ),
                  Tab(
                    child: Text("Footwear",style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500),),
                  ),
                  Tab(
                    child: Text("Dresses",style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500),),
                  )
                ],
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black54,
                indicatorColor: Colors.black,
                indicatorSize:TabBarIndicatorSize.label,
              ),
            Expanded(child: TabBarView(children: [HandBag(),Jewellery(),Foot(),Text("ddress")]))
            ],
          )),
    );
  }
}
