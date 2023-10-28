import 'package:flutter/material.dart';

class Addbtn extends StatefulWidget {
  @override
  State<Addbtn> createState() => _AddbtnState();
}

class _AddbtnState extends State<Addbtn> {
  // Addbtn({super.key});
  @override

    int count=0;
  bool fav=false;

  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(onTap: (){
                setState(() {
                 count==0? count =0:count--;
                });



                },
                  child: Container(
                    height: 35,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)),
                    child: const Center(
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  height: 35,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(
                      child: Text(
                        count.toString(),
                        style: TextStyle(fontSize: 18),
                      )),
                ),
                const SizedBox(
                  width: 3,
                ),
                InkWell(onTap: (){

                  setState(() {
                    count++;
                  });
                },
                  child: Container(
                    height: 35,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)),
                    child: const Center(
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                )
              ],
            ),
            InkWell(onTap: (){

              setState(() {
                fav =!fav;
              });

              },
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(20), color: fav==false?Colors.red[400]:Colors.white),
                child:  Icon(
                  Icons.favorite,
                  color:  fav==false? Colors.white:Colors.red,
                  size: 20,
                ),
              ),
            )
          ]),
    );
  }
}