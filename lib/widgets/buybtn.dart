import 'package:bag_app/widgets/color_theam.dart';
import 'package:flutter/material.dart';

class Buybtn extends StatefulWidget {
  final Color theam;
   Buybtn({super.key, required this.theam});

  @override
  State<Buybtn> createState() => _BuybtnState();
}
  bool click=false;
class _BuybtnState extends State<Buybtn> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Row(children: [
        InkWell(
          onTap: (){
           setState(() {

             click=!click;

           });

        },

          child:click==true? Container(
            height: 50,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: widget.theam,
                border: Border.all(color: widget.theam)),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          ): Container(
            height: 50,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                border: Border.all(color: widget.theam)),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: widget.theam,
            ),
          )
        ),









        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: widget.theam,
            ),
            child: const Center(
                child: Text(
                  "BUY NOW",
                  style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                )),
          ),
        ),

      ]),
    );
  }
}