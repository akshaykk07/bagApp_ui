import 'package:flutter/material.dart';

import 'color_theam.dart';

class Ccircle extends StatelessWidget {
  final String size;
  const Ccircle({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Color",
                style: TextStyle(
                    color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 182,),
              Text("Size",style: TextStyle(
                  color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),),
            ],
          ),
          SizedBox(
            height: 5,
          ),


          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            SizedBox(
              width: 8,
            ),
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
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(15)),
            ),
            SizedBox(width: 150,),
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
