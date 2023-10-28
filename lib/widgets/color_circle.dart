import 'package:flutter/material.dart';

import 'color_theam.dart';

class Ccircle extends StatelessWidget {
  final String size;
  final Color Colrcircle;
  Ccircle({super.key, required this.size, required this.Colrcircle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [SizedBox(height: 10,),
          const Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Color",
                style: TextStyle(
                    color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 160,),
              Text("Size",style: TextStyle(
                  color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),),
            ],
          ),
          SizedBox(
            height: 2,
          ),


          Row(mainAxisAlignment: MainAxisAlignment.start, children: [

            Colrcircle ==mainColor1?
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: mainColor1,width: 2),color: Colors.white),
              child: Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 2),
                    color: mainColor1, borderRadius: BorderRadius.circular(10)),
              ),
            ):Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  color: mainColor1, borderRadius: BorderRadius.circular(15)),
            ),

            SizedBox(
              width: 8,
            ),


            Colrcircle ==mainColor2?
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: mainColor2,width: 2),color: Colors.white),
              child: Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 2),
                    color: mainColor2, borderRadius: BorderRadius.circular(10)),
              ),
            ):Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  color: mainColor2, borderRadius: BorderRadius.circular(15)),
            ),




            SizedBox(
              width: 8,
            ),


            Colrcircle ==mainColor4?
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: mainColor4,width: 2),color: Colors.white),
              child: Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 2),
                    color: mainColor4, borderRadius: BorderRadius.circular(10)),
              ),
            ):Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  color: mainColor4, borderRadius: BorderRadius.circular(15)),
            ),
            SizedBox(width: 127,),
            Text(
              size,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold,color: Colors.grey[800]),
            )
          ]),
        ],
      ),
    );
  }
}
